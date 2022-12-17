from django import forms

from django.forms import ValidationError

from django.contrib.auth.models import User


class signupform(forms.ModelForm):

    username = forms.CharField(widget=forms.TextInput(
        attrs={"class": "form-control", "placeholder": "enter your username"}), label="username")

    email = forms.EmailField(widget=forms.TextInput(
        attrs={"class": "form-control", "placeholder": "enter your email address"}), label="email address")

    password1 = forms.CharField(widget=forms.PasswordInput(
        attrs={"class": "form-control", "placeholder": "enter your password"}), label="password")

    password2 = forms.CharField(
        widget=forms.PasswordInput(attrs={"class": "form-control", "placeholder": "enter your confirmation password"}), label="confrimation password")

    class Meta:

        model = User

        fields = ['username']

    def clean_password(self):

        password1 = self.cleaned_data["password1"]

        password2 = self.cleaned_data["password2"]

        if password1 and password2 and password1 != password2:

            raise ValidationError(
                "password and confirmation password do not match")

        return password1


class LoginUserForm(forms.Form):

    email_or_username = forms.CharField(label='email/username', error_messages={
        'required': 'this field could not be empty'},)

    password = forms.CharField(label='password', error_messages={
                               'required': 'this field could not be empty'}, widget=forms.PasswordInput())
