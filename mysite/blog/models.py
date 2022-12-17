from django.db import models

from django.contrib.auth.models import User

from django.utils import timezone

from django.urls import reverse

from taggit.managers import TaggableManager

# Create your models here.


class Category(models.Model):

    name = models.CharField(max_length=100)

    def __str__(self):

        return self.name


class Post(models.Model):

    title = models.CharField(max_length=200)

    content = models.TextField()

    slug = models.SlugField()

    tags = TaggableManager()

    author = models.ForeignKey(User, on_delete=models.CASCADE)

    create_date = models.DateTimeField(auto_now_add=True)

    update_date = models.DateTimeField(auto_now=True)

    publish_date = models.DateTimeField(default=timezone.now)

    count_view = models.PositiveIntegerField()

    status = models.BooleanField(default=False)

    category = models.ManyToManyField(Category)

    def __str__(self):

        return self.title

    def get_absolute_url(self):

        return reverse("blog:detail", kwargs={"pk": self.pk})


def upload_gallery_image(instance, filename):

    return f"images/post/gallery/{filename}"


class PostGallery(models.Model):

    post_image_name = models.ImageField(upload_to=upload_gallery_image,)

    image_alt_name = models.CharField(max_length=200)

    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='images')


class Comment(models.Model):

    name = models.CharField(max_length=50)

    email = models.EmailField()

    subject = models.CharField(max_length=200)

    comment = models.TextField()

    approved = models.BooleanField(default=False)

    create_date = models.DateTimeField(auto_now_add=True)

    update_date = models.DateTimeField(auto_now=True)

    post = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name='comments')

    class Meta:

        ordering = ("-create_date",)

    def __str__(self):

        return f'Comment by {self.name} on {self.post}'
