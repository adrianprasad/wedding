from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Address(models.Model):
    Name = models.ForeignKey(User, verbose_name="Name", on_delete=models.CASCADE)
    locality = models.CharField(max_length=150, verbose_name="Nearest Location")
    city = models.CharField(max_length=150, verbose_name="City")
    state = models.CharField(max_length=150, verbose_name="State")

    def __str__(self):
        return self.locality


class EventCategory(models.Model):
    categorytitle = models.CharField(max_length=50, verbose_name="Category Title")
    description = models.TextField(blank=True, verbose_name="Category Description")
    category_image = models.ImageField(upload_to='category', blank=True, null=True, verbose_name="Category Image")
    is_active = models.BooleanField(verbose_name="Is Active?")
    is_featured = models.BooleanField(verbose_name="Is Featured?")    

    def __str__(self):
        return self.categorytitle


class EventDetails(models.Model):
    Eventtitle = models.CharField(max_length=150, verbose_name="Product Title")
    description = models.TextField(blank=True, null=True, verbose_name="Detail Description")
    image = models.ImageField(upload_to='product', blank=True, null=True, verbose_name="Product Image")
    category = models.ForeignKey(EventCategory, verbose_name="Product Categoy", on_delete=models.CASCADE)
    is_active = models.BooleanField(verbose_name="Is Active?")
    is_featured = models.BooleanField(verbose_name="Is Featured?")

    def __str__(self):
        return self.Eventtitle


class Cart(models.Model):
    user = models.ForeignKey(User, verbose_name="User", on_delete=models.CASCADE)
    product = models.ForeignKey(EventDetails, verbose_name="Product", on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1, verbose_name="Quantity")
    
    def __str__(self):
        return str(self.user)
    
    @property
    def total_price(self):
        return self.quantity * self.product.price


