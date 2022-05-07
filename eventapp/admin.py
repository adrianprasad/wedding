from django.contrib import admin
from .models import Address, EventCategory, EventDetails, Cart

# Register your models here.
class AddressAdmin(admin.ModelAdmin):
    list_display = ('user', 'locality', 'city', 'state')
    list_filter = ('city', 'state')
    list_per_page = 10
    search_fields = ('locality', 'city', 'state')


class EventCategoryAdmin(admin.ModelAdmin):
    list_display = ('categorytitle', 'slug', 'category_image', 'is_active', 'is_featured', 'updated_at')
    list_editable = ('slug', 'is_active', 'is_featured')
    list_filter = ('is_active', 'is_featured')
    list_per_page = 10
    search_fields = ('categorytitle', 'description')
    prepopulated_fields = {"slug": ("categorytitle", )}


class EventDetailsAdmin(admin.ModelAdmin):
    list_display = ('Eventtitle', 'slug', 'category', 'image', 'is_active', 'is_featured', 'updated_at')
    list_editable = ('slug', 'category', 'is_active', 'is_featured')
    list_filter = ('category', 'is_active', 'is_featured')
    list_per_page = 10
    search_fields = ('Eventtitle', 'category', 'short_description')
    prepopulated_fields = {"slug": ("Eventtitle", )}

class CartAdmin(admin.ModelAdmin):
    list_display = ('user', 'product', 'quantity', 'created_at')
    list_editable = ('quantity',)
    list_filter = ('created_at',)
    list_per_page = 20
    search_fields = ('user', 'product')





admin.site.register(Address, AddressAdmin)
admin.site.register(EventCategory, EventCategoryAdmin)
admin.site.register(EventDetails, EventDetailsAdmin)
admin.site.register(Cart, CartAdmin)

