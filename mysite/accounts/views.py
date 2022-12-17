from django.shortcuts import render, redirect

from accounts.forms import signupform, LoginUserForm

from django.contrib.auth import authenticate, login, logout

from django.contrib.auth.models import User


from django.contrib.auth.decorators import login_required

from django.urls import reverse

from django.contrib import messages

from django.contrib.auth.views import PasswordResetView

from django.contrib.messages.views import SuccessMessageMixin

from django.urls import reverse_lazy

# Create your views here.


def Login_View(request):

    if not request.user.is_authenticated:

        if request.method == "POST":

            form = LoginUserForm(request.POST)

            if form.is_valid():

                cd = form.cleaned_data

                username = cd.get("email_or_username")

                password = cd.get("password")

                user = authenticate(username=username,
                                    password=password)

                if user is not None:

                    login(request, user)

                    return redirect('/')
                messages.error(request, "user not found", "error")

        form = LoginUserForm()

        return render(request, 'accounts/login.html', {"form": form})

    return redirect('/')


@login_required
def Logout_View(request):

    logout(request)

    return redirect('/')


def Signup_View(request):

    if not request.user.is_authenticated:

        if request.method == "POST":

            form = signupform(request.POST)

            if form.is_valid():

                data = form.cleaned_data

                User.objects.create_user(username=data['username'],

                                         email=data['email'],

                                         password=data['password1'])

                messages.success(request, 'successfully signed up', 'success')

                return render(request, 'accounts/welcome.html')

            messages.error(request, "failled to sign up", "error")

            return render(request, "accounts/signup.html", {"form": form})

        form = signupform()

        return render(request, "accounts/signup.html", {"form": form})


# class ResetPasswordView(SuccessMessageMixin, PasswordResetView):

#     user = User.objects.filter()

#     template_name = 'accounts/password_reset.html'
#     email_template_name = 'accounts/password_reset_email.html'
#     subject_template_name = 'accounts/password_reset_subject.txt'
#     success_message = "We've emailed you instructions for setting your password, " \
#                       "if an account exists with the email you entered. You should receive them shortly." \
#                       " If you don't receive an email, " \
#                       "please make sure you've entered the address you registered with, and check your spam folder."
#     success_url = reverse_lazy('/')
