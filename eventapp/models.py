from pickle import TRUE
from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Address(models.Model):
    user = models.ForeignKey(User, verbose_name="Name", on_delete=models.CASCADE)
    locality = models.CharField(max_length=150, verbose_name="Nearest Location")
    city = models.CharField(max_length=150, verbose_name="City")
    state = models.CharField(max_length=150, verbose_name="State")

    def __str__(self):
        return self.locality


class EventCategory(models.Model):
    categorytitle = models.CharField(max_length=50, verbose_name="Category Title")
    slug = models.SlugField(max_length=55, verbose_name="Category Slug")
    description = models.TextField(blank=True, verbose_name="Category Description")
    category_image = models.ImageField(upload_to='category', blank=True, null=True, verbose_name="Category Image")
    is_active = models.BooleanField(verbose_name="Is Active?")
    is_featured = models.BooleanField(verbose_name="Is Featured?")    
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Created Date")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="Updated Date")

    class Meta:
        verbose_name_plural = 'Categories'
        ordering = ('-created_at', )

    def __str__(self):
        return self.categorytitle


class EventDetails(models.Model):
    Eventtitle = models.CharField(max_length=150, verbose_name="Event Title")
    slug = models.SlugField(max_length=160, verbose_name="Event Slug")
    description = models.TextField(blank=True, null=True, verbose_name="Detail Description")
    image = models.ImageField(upload_to='product', blank=True, null=True, verbose_name="Event Image")
    category = models.ForeignKey(EventCategory, verbose_name="Event Categoy", on_delete=models.CASCADE)
    amount=models.DecimalField(max_digits=8, decimal_places=2)
    is_active = models.BooleanField(verbose_name="Is Active?")
    is_featured = models.BooleanField(verbose_name="Is Featured?")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Created Date")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="Updated Date")

    class Meta:
        verbose_name_plural = 'Products'
        ordering = ('-created_at', )

    def __str__(self):
        return self.Eventtitle


class Cart(models.Model):
    user = models.ForeignKey(User, verbose_name="User", on_delete=models.CASCADE)
    product = models.ForeignKey(EventDetails, verbose_name="Product", on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1, verbose_name="Quantity")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Created Date")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="Updated Date")
    
    def __str__(self):
        return str(self.user)
    
    @property
    def total_price(self):
        return self.quantity * self.product.price

STATUS_CHOICES = (
    ('Pending', 'Pending'),
    ('Accepted', 'Accepted'),
    ('Packed', 'Packed'),
    ('On The Way', 'On The Way'),
    ('Delivered', 'Delivered'),
    ('Cancelled', 'Cancelled')
)

class Order(models.Model):
    user = models.ForeignKey(User, verbose_name="User", on_delete=models.CASCADE)
    address = models.ForeignKey(Address, verbose_name="Shipping Address", on_delete=models.CASCADE)
    product = models.ForeignKey(EventDetails, verbose_name="Product", on_delete=models.CASCADE)
    ordered_date = models.DateTimeField(auto_now_add=True, verbose_name="Ordered Date")
    status = models.CharField(
        choices=STATUS_CHOICES,
        max_length=50,
        default="Pending"
        )

class Booking(models.Model):
    user = models.ForeignKey(User, verbose_name="User", on_delete=models.CASCADE)
    Eventtitle = models.ForeignKey(Address, verbose_name="Event", on_delete=models.CASCADE)
    Description = models.ForeignKey(EventDetails, verbose_name="Descrption", on_delete=models.CASCADE)
    booked_date = models.DateTimeField(auto_now_add=True, verbose_name="Ordered Date")

    class Meta:
        verbose_name_plural = 'Products'

    def __str__(self):
        return self.user