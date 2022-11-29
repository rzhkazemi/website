from django import forms

from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget

from blog.models import Comment, Post, PostGallery

from captcha.fields import CaptchaField


class CaptchaCommentForm(forms.ModelForm):

    captcha = CaptchaField()

    class Meta:

        model = Comment

        fields = ('name', 'email', 'comment')

        widgets = {

            "name": forms.TextInput(attrs={"class": "form-group", "placeholder": "Your Name", "label": "Name: "}),

            "email": forms.TextInput(attrs={"class": "form-group", "placeholder": "Your Email", "label": "Email: "}),

            "comment": forms.Textarea(attrs={"class": "form-group", "placeholder": "Your Comment", "label": " Comment: "}),

            "captcha": forms.TextInput(attrs={"class": "form-group", "placeholder": "Captcha", "label": "Captcha: "}),

        }


class PostForm(forms.ModelForm):

    class Meta:

        model = Post

        fields = "__all__"

        widgets = {
            "content": SummernoteWidget(),
            "bar": SummernoteInplaceWidget(),
            # "title": {"class": "form-control", "required": "این فیلد حتما باید پر شود"},
            # "content": {"class": "form-control", "required": "این فیلد حتما باید پر شود"},
            # "slug": {"class": "form-control", "required": "این فیلد حتما باید پر شود"},
        }


class PostGalleryForm(forms.ModelForm):

    class Meta:

        model = PostGallery

        fields = ('post_image_name',)


# class SearchForm(forms.Form):

#     keyword = forms.CharField(max_length=200)
