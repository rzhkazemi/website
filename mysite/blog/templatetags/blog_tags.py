from django import template

from blog.models import Category, Post, Comment

from django.shortcuts import get_object_or_404

register = template.Library()


@register.inclusion_tag('blog/recent_posts.html')
def recentposts(arg=4):

    posts = Post.objects.filter(status=True).order_by('-publish_date')[:arg]

    return {"posts": posts}


@register.inclusion_tag('blog/category.html')
def postcategories():

    posts = Post.objects.filter(status=True)

    categories = Category.objects.all()

    cat_dict = {}

    for name in categories:

        cat_dict[name] = posts.filter(category=name).count()

    return {"categories": cat_dict}


@register.simple_tag(name="comments_count")
def function(pk):

    return Comment.objects.filter(post=pk, approved=True).count()


@register.simple_tag(name="firstimage")
def function():
    posts = Post.objects.filter(status=True)
