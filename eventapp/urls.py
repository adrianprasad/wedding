from django.urls import path
from eventapp.forms import LoginForm
from . import views
from django.contrib.auth import views as auth_views

app_name='login'

urlpatterns = [
    path('', views.home,name='home'),
    path('about', views.about, name='about'),
    path('gallery', views.gallery, name='gallery'),
    path('add-to-cart/', views.add_to_cart, name="add-to-cart"),
    path('remove-cart/<int:cart_id>/', views.remove_cart, name="remove-cart"),
    path('plus-cart/<int:cart_id>/', views.plus_cart, name="plus-cart"),
    path('minus-cart/<int:cart_id>/', views.minus_cart, name="minus-cart"),
    path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),
    path('orders/', views.orders, name="orders"),
    path('/product/<slug:slug>/', views.details, name="product-detail"),
    path('categories/', views.all_categories, name="all-categories"),
    path('event/contact/', views.contact, name="contact"),
    path('<slug:slug>/', views.category_products, name="category-products"),
    path('showpage',views.showpage,name='showpage'),
    path('bookings<',views.bookings,name='bookings'),
    path('accounts/profile/', views.profile, name="profile"),
    path('accounts/register/', views.RegistrationView.as_view(), name="register"),
    path('accounts/login/', auth_views.LoginView.as_view(template_name='login/login.html', authentication_form=LoginForm), name="login"),
    path('accounts/add-address/', views.AddressView.as_view(), name="add-address"),
    path('accounts/remove-address/<int:id>/', views.remove_address, name="remove-address"),
    path('accounts/logout_view/', views.logout_view, name="logout_view"),
    path('addcat',views.addcat,name='addcat'),
    path('/addevent/',views.addevent,name='addevent'),
    path('delete/<int:pk>', views.delete,name='delete'),
    path('edit/<int:pk>',views.edit,name='edit'),
]