from django import forms

from main.models import Newsletter, Contact

from captcha.fields import CaptchaField


# class ContactForm(forms.Form):

# name = forms.CharField(max_length=100)

# email = forms.EmailField()

# subject = forms.CharField(max_length=100)

# message = forms.CharField(widget=forms.TextInput)

# def __str__(self):

#     return self.subject


class CaptchaContactForm(forms.ModelForm):

    captcha = CaptchaField()

    class Meta:

        model = Contact

        fields = "__all__"

        widgets = {

            "name": forms.Textarea(attrs={"class": "form-control rounded border-white mb-3 form-input", "placeholder": "Name"}),

            "email": forms.Textarea(attrs={"class": "form-control rounded border-white mb-3 form-input", "placeholder": "Email"}),

            "subject": forms.Textarea(attrs={"class": "form-control rounded border-white mb-3 form-input", "placeholder": "Subject"}),

            "message": forms.Textarea(attrs={"class": "form-control rounded border-white mb-3 form-text-area", "rows": "5", "cols": "30", "placeholder": "Message"}),

            "captcha": forms.Textarea(attrs={"class": "form-control rounded border-white mb-3 form-input", "placeholder": "Captcha"}),

        }


class NewsletterForm(forms.ModelForm):

    class Meta:

        model = Newsletter

        fields = "__all__"
