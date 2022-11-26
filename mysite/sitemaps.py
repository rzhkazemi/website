from django.contrib.sitemaps import Sitemap

from blog.models import Post


from django.contrib import sitemaps

from django.urls import reverse


class StaticViewSitemap(sitemaps.Sitemap):

    changefreq = "weekly"

    priority = 0.5

    def items(self):

        return ["main:index"]

    def location(self, item):

        return reverse(item)


class PostSitemap(Sitemap):

    priority = 0.5

    chengfreq = "weekly"

    def items(self):

        return Post.objects.filter(status=True)

    def lastmod(self, obj):

        return obj.publish_date

    def location(self, item):

        return item.get_absolute_url()
