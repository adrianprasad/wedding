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
    
    path('product/<slug:slug>/', views.detail, name="product-detail"),
    path('categories/', views.all_categories, name="all-categories"),
    path('event/contact/', views.contact, name="contact"),
    path('<slug:slug>/', views.category_products, name="category-products"),
    path('showpage',views.showpage,name='showpage'),
    path('login/register/', views.RegistrationView.as_view(), name='register'),
    path('login/login/', auth_views.LoginView.as_view(template_name='login/login.html', authentication_form=LoginForm), name='login'),
    path('admin/profile/', views.profile, name="profile"),
    path('admin/logout/', auth_views.LogoutView.as_view(next_page='login:login'), name="logout"),
    path('admin',views.admin,name='admin'),
    path('addcat',views.addcat,name='addcat'),
    path('/addpro/',views.addpro,name='addpro'),
    path('/deleteproduct//<int:pk/',views.deleteproduct,name='deleteproduct'),
    path('edit/<int:pk/',views.edit,name='edit'),
    path('edit_pro/<int:pk/',views.edit_pro,name='edit_pro'),
]