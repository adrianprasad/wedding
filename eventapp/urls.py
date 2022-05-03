from django.urls import path
from eventapp.forms import LoginForm, PasswordChangeForm, SetPasswordForm

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
    path('register',views.register,name='register'),
    path('/login',views.login,name='login'),
#    path('login/profile/', views.profile, name="profile"),
    path('logoutpage/', views.logoutpage, name="logoutpage"),
    path('admin',views.admin,name='admin'),
    path('addcat',views.addcat,name='addcat'),
    path('/addevent/',views.addevent,name='addevent'),
    path('/deleteproduct//<int:pk/',views.deleteproduct,name='deleteproduct'),
    path('edit/<int:pk/',views.edit,name='edit'),
    path('edit_pro/<int:pk/',views.edit_pro,name='edit_pro'),
]