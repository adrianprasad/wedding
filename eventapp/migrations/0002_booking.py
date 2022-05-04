# Generated by Django 4.0.4 on 2022-05-04 08:34

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('eventapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ordered_date', models.DateTimeField(auto_now_add=True, verbose_name='Ordered Date')),
                ('Description', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='eventapp.eventdetails', verbose_name='Descrption')),
                ('Event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='eventapp.address', verbose_name='Event')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='User')),
            ],
        ),
    ]
