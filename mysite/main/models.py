from django.db import models

# Create your models here.

from django.contrib.auth.models import User

from django.utils import timezone

# Create your models here.


class Contact(models.Model):

    name = models.CharField(max_length=100)

    email = models.EmailField()

    subject = models.CharField(max_length=100)

    message = models.TextField()

    created = models.DateTimeField(auto_now_add=True)

    updated = models.DateTimeField(auto_now=True)

    class Meta:

        ordering = ['created']

    def __str__(self):

        return self.name


class Newsletter(models.Model):

    Email = models.EmailField()
