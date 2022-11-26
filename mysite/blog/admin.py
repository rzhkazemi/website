from django.contrib import admin

from blog.models import Post, Comment, Category, PostGallery

from django_summernote.admin import SummernoteModelAdmin

# Apply summernote to all TextField in model.


class SomeModelAdmin(SummernoteModelAdmin):  # instead of ModelAdmin
    summernote_fields = ('content',)


admin.site.register(Post, SomeModelAdmin)

# Register your models here.

# admin.site.register(Post)
admin.site.register(Comment)
admin.site.register(Category)
admin.site.register(PostGallery)
