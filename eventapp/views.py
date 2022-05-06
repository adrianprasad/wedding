from django.forms import IntegerField
from django.shortcuts import render
from unicodedata import category
from django.contrib.auth import authenticate,login,logout
import django
from django.contrib.auth.models import User
from eventapp.models import Address, Cart, EventCategory, EventDetails,Order,Booking
from django.shortcuts import redirect, render, get_object_or_404
from .forms import RegistrationForm, AddressForm,LoginForm
from django.contrib import messages
from django.views import View
import decimal
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator 



# Create your views here.
def home(request):
    categories = EventCategory.objects.filter(is_active=True, is_featured=True)[:3]
    products = EventDetails.objects.filter(is_active=True, is_featured=True)[:8]
    context = {'categories': categories,'products': products,}
    return render(request,'./event/index.html',context)

def about(request):
    return render(request,'./event/about.html')

def gallery(request):
    return render(request,'./event/gallery.html')

def contact(request):
    return render(request,'./event/contact.html')

# def register(request):
#     form=RegistrationForm()
#     if request.method=='POST':
#         form = RegistrationForm(request.POST)
#         if form.is_valid():
#             messages.success(request, "Congratulations! Registration Successful!")
#             form.save()
#             return redirect('login:login')
#     return render(request,'login/register.html', {'form': form})



# def login(request):
    
#     if request.method=='POST':
#         form=LoginForm(request.POST)
        
#         if form.is_valid():
#             uname = form.cleaned_data['username']
#             password=form.cleaned_data['password']
#             user=authenticate(username=uname, password=password)
#             if user is not None:
#                 login(request,user)
#                 return HttpResponseRedirect('login:home')
#     else:
#         form=LoginForm()       
#     return render (request, 'login/login.html', {'form':form})

class RegistrationView(View):
    def get(self, request):
        form = RegistrationForm()
        return render(request, 'login/register.html', {'form': form})
    
    def post(self, request):
        form = RegistrationForm(request.POST)
        if form.is_valid():
            messages.success(request, "Congratulations! Registration Successful!")
            form.save()
        return render(request, 'login/register.html', {'form': form})



@login_required
def profile(request):
    addresses = Address.objects.filter(user=request.user)
    a=EventDetails.objects.all()
    return render(request, 'admin/profile.html',{'addresses':addresses,'all':a})

@method_decorator(login_required, name='dispatch')
class AddressView(View):
    def get(self, request):
        form = AddressForm()
        return render(request, 'admin/add_address.html', {'form': form})

    def post(self, request):
        form = AddressForm(request.POST)
        if form.is_valid():
            user=request.user
            city = form.cleaned_data['city']
            state = form.cleaned_data['state']
            reg = Address(user=user, city=city, state=state)
            reg.save()
            messages.success(request, "New Address Added Successfully.")
        return redirect('login:profile')

@login_required
def remove_address(request, id):
    a = get_object_or_404(Address, user=request.user, id=id)
    a.delete()
    messages.success(request, "Address removed.")
    return redirect('login:profile')


@login_required
def logout_view(request):
    logout (request)
    return redirect('login:home')

@login_required
def add_to_cart(request):
    user = request.user
    product_id = request.GET.get('prod_id')
    product = get_object_or_404(EventDetails, id=product_id)

    item_already_in_cart = Cart.objects.filter(product=product_id, user=user)
    if item_already_in_cart:
        cp = get_object_or_404(Cart, product=product_id, user=user)
        cp.quantity += 1
        cp.save()
    else:
        Cart(user=user, product=product).save()
    
    return redirect('login:home')


@login_required
def cart(request):
    user = request.user
    cart_products = Cart.objects.filter(user=user)

    amount = decimal.Decimal(0)
    shipping_amount = decimal.Decimal(10)
    cp = [p for p in Cart.objects.all() if p.user==user]
    if cp:
        for p in cp:
            temp_amount = (p.quantity * p.product.amount)
            amount += temp_amount

    addresses = Address.objects.filter(user=user)

    context = {
        'cart_products': cart_products,
        'amount': amount,
        'shipping_amount': shipping_amount,
        'total_amount': amount + shipping_amount,
        'addresses': addresses,
    }
    return render(request, 'event/cart.html', context)


@login_required
def remove_cart(request, cart_id):
    if request.method == 'GET':
        c = get_object_or_404(Cart, id=cart_id)
        c.delete()
        messages.success(request, "Product removed from Cart.")
    return redirect('login:cart')



def all_categories(request):
    categories = EventCategory.objects.filter(is_active=True)
    return render(request, 'event/categories.html', {'categories':categories})


def category_products(request, slug):
    category = get_object_or_404(EventCategory, slug=slug)
    products = EventDetails.objects.filter(is_active=True, category=category)
    categories = EventCategory.objects.filter(is_active=True)
    context = {'category': category,'products': products,'categories': categories,}
    return render(request, 'event/category_products.html', context)

@login_required
def checkout(request):
    user = request.user
    address_id = request.GET.get('address')
    
    address = get_object_or_404(Address, id=address_id)
    cart = Cart.objects.filter(user=user)
    for c in cart:
        Order(user=user, address=address, product=c.product, quantity=c.quantity).save()
        c.delete()
    return redirect('login:orders')


@login_required
def orders(request):
    all_orders = Order.objects.filter(user=request.user).order_by('-ordered_date')
    return render(request, 'event/order.html', {'orders': all_orders})





@login_required
def addcat(request):
    if request.method == 'POST':
        categorytitle=request.POST['title']
        slug=request.POST['slug']
        description=request.POST['description']
        is_active=request.POST['is_active']
        is_featured=request.POST['is_featured']
        category_image=request.FILES['category_image']
        
        cat=EventCategory(categorytitle=categorytitle,
                    slug=slug,
                    description=description,
                    is_active=True,
                    is_featured=True,
                    category_image=category_image,)
                    
        cat.save()
        print('success')
        return redirect('login:addevent')
    ve=EventCategory.objects.all()
    return render(request,'event/addcategory.html',{'ve':ve} )


def details(request, slug):
    product = get_object_or_404(EventDetails, slug=slug)
    related_products = EventDetails.objects.exclude(id=product.id).filter(is_active=True, category=product.category)
    context = {
        'product': product,
        'related_products': related_products,

    }
    return render(request, 'event/detail.html', context)


@login_required
def addevent(request):
    if request.method == 'POST':
        Eventtitle=request.POST['title']
        slug=request.POST['slug']
        amount=request.POST['amount']
        category=request.POST['category']
        category=EventCategory.objects.get(id=category)
        description=request.POST['description']
        is_active=request.POST['is_active']
        is_featured=request.POST['is_featured']
        image = request.FILES['file']
        pro=EventDetails(Eventtitle=Eventtitle,
                    slug=slug,
                    amount=amount,
                    category=category,
                    description=description,
                    is_active=True,
                    is_featured=True,
                    image=image)  
        pro.save()
        print('success')
        return redirect('login:showpage')
    we=EventCategory.objects.all()
    return render(request,'./event/addevent.html',{'we':we} )


@login_required
def deleteproduct(request,pk):
    pro=EventDetails.objects.get(id=pk)
    pro.delete()  
    print("successfully deleted")
    return redirect('login:showpage')

@login_required
def remove_address(request, id):
    a = get_object_or_404(Address, user=request.user, id=id)
    a.delete()
    messages.success(request, "Address removed.")
    return redirect('login:profile')


@login_required
def plus_cart(request, cart_id):
    if request.method == 'GET':
        cp = get_object_or_404(Cart, id=cart_id)
        cp.quantity += 1
        cp.save()
    return redirect('login:cart')


@login_required
def minus_cart(request, cart_id):
    if request.method == 'GET':
        cp = get_object_or_404(Cart, id=cart_id)
        # Remove the Product if the quantity is already 1
        if cp.quantity == 1:
            cp.delete()
        else:
            cp.quantity -= 1
            cp.save()
    return redirect('login:cart')
    
@login_required
def showpage(request):
    a=EventDetails.objects.all()
    return render(request,'event/show.html',{'all':a})


# @login_required
# def edit (request,pk): 
#     cat=EventCategory.objects.get(id=pk)
#     pro=EventDetails.objects.get(id=pk)
#     return render(request, 'edit/edit.html', {'stud': cat,'std':pro})

# def edit_pro(request,pk):
#     if request.method=='POST':
#         prod=EventDetails.objects.get(id=pk)
#         prod.Eventtitle = request.POST.get('title')
#         prod.slug = request.POST.get('slug')
#         prod.description=request.POST.get('age')
#         prod.image = request.POST.get('Tname')
#         prod.price = request.POST.get('price')
#         prod.save() 
#         print("successfully updated")
#         return redirect('showpage')
#     return render(request,'showcat.html',)

@login_required
def edit(request,pk):
    event=EventDetails.objects.get(id=pk)
    cat=EventCategory.objects.all()
    if request.method=='POST':
        event=EventDetails.objects.get(id=pk)
        event.Eventtitle = request.POST.get('title')
        event.slug = request.POST.get('slug')
        event.description = request.POST.get('description')
        event.image = request.POST.get('file')
        event.category = request.POST.get('category')
        event.amount = request.POST.get('amount')
        event.is_active = request.POST.get('is_active')
        event.is_featured = request.POST.get('is_featured')
        event.save() 
        print("successfully updated")
        return redirect('showpage')
    return render(request,'edit/edit.html',{'event':event,'cat':cat })

@login_required
def delete(request,pk):
    form=EventDetails.objects.get(id=pk)
    form.delete()
    return redirect('login:showpage')

@login_required
def bookings(request):
    a=EventDetails.objects.filter(id=a)
    user=User.objects.filter(id=request.user,)
    return render(request,'event/booking.html',{'all':a,'a':user})

@login_required
def orders(request):
    all_orders = Order.objects.filter(user=request.user).order_by('-ordered_date')
    return render(request, 'event/orders.html', {'orders': all_orders})