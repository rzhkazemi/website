from django.shortcuts import render, redirect

from main.forms import NewsletterForm, CaptchaContactForm

from django.contrib import messages

from django.views import View
# Create your views here.


class IndexView(View):

    template_name = "index.html"

    def get(self, request, *args, **kwargs):

        contactform = CaptchaContactForm()

        newsform = NewsletterForm()

        return render(request, self.template_name, {"newsform": newsform, "contactform": contactform})

    def post(self, request, *args, **kwargs):

        contactform = CaptchaContactForm(request.POST)

        newsform = NewsletterForm(request.POST)

        if contactform.is_valid():

            contactform.save()

            messages.success(request, "پیام شما با موفقیت ثبت شد", "SUCCESS")

            return redirect('/')

        if newsform.is_valid():

            newsform.save()

            messages.success(request, "ایمیل شما با موفقیت ثبت شد", "SUCCESS")

            return render(request, self.template_name)

        return render(request, self.template_name, {"newsform": newsform, "contactform": contactform})


class ContactView(View):

    def get(self, request, *args, **kwargs):

        contactform = CaptchaContactForm()

        return render(request, "contact.html", {"contactform": contactform})

    def post(self, request, *args, **kwargs):

        contactform = CaptchaContactForm(request.POST)

        if contactform.is_valid():

            contactform.save()

            messages.success(request, "پیام شما با موفقیت ثبت شد", "SUCCESS")

            return redirect('/')
        return render(request, "contact.html", {"contactform": contactform})
