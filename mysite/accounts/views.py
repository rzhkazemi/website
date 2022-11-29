from django.shortcuts import render, redirect

from django.contrib.auth.forms import AuthenticationForm, UserCreationForm

from django.contrib.auth import authenticate, login, logout

from django.contrib.auth.decorators import login_required

from django.urls import reverse
# Create your views here.


def Login_View(request):

    if request.method == "POST":

        form = AuthenticationForm(request=request, data=request.POST)

        if form.is_valid():

            username = form.cleaned_data["username"]

            password = form.cleaned_data["password"]

            user = authenticate(username=username,
                                password=password)

            if user is not None:

                login(request, user)

                return redirect('/')
    form = AuthenticationForm()
    return render(request, 'accounts/login.html')


@login_required
def Logout_View(request):

    logout(request)

    return redirect('/')


def Signup_View(request):

    if not request.user.is_authenticated:

        if request.method == "POST":

            form = UserCreationForm(request.POST)

            if form.is_valid():

                form.save()

            return reverse('accounts:login')

        form = UserCreationForm()

        return render(request, 'accounts/signup.html', {"form": form})

    else:
        return redirect('/')
