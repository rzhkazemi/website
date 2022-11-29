"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from django.contrib.sitemaps.views import sitemap
from sitemaps import PostSitemap, StaticViewSitemap
from main import views
from django.views.generic import TemplateView

from main.views import ContactView

import debug_toolbar

sitemaps = {"postsitemaps": PostSitemap,
            "main": StaticViewSitemap}

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("main.urls", namespace="main")),
    path("about/", TemplateView.as_view(template_name="about.html"), name="about"),
    path("contact/", ContactView.as_view(), name="contact"),
    path("blog/", include("blog.urls", namespace="blog")),
    path("accounts/", include("accounts.urls", namespace="accounts")),
    path("summernote/", include("django_summernote.urls")),
    path("blog/sitemap.xml/", sitemap, {"sitemaps": sitemaps},
         name="django.contrib.sitemaps.views.postsitemaps"),
    path("sitemap.xml/", sitemap, {"sitemaps": sitemaps},
         name="django.contrib.sitemaps.views.postsitemaps"),
    path("robots.txt", include("robots.urls")),
    path("__debug__", include("debug_toolbar.urls")),
    path("captcha/", include("captcha.urls")),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
