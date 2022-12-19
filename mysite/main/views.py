from django.shortcuts import render, redirect

from main.forms import NewsletterForm, CaptchaContactForm

from django.contrib import messages

from django.views import View
# Create your views here.


class IndexView(View):

    template_name = "index.html"

    def get(self, request, *args, **kwargs):

        newsform = NewsletterForm()

        return render(request, self.template_name, {"newsform": newsform})

    def post(self, request, *args, **kwargs):

        newsform = NewsletterForm(request.POST)

        if newsform.is_valid():

            newsform.save()

            messages.success(request, "ایمیل شما با موفقیت ثبت شد", "SUCCESS")

            return render(request, self.template_name)

        return render(request, self.template_name, {"newsform": newsform})


class ContactView(View):

    def get(self, request, *args, **kwargs):

        contactform = CaptchaContactForm()

        return render(request, "contact.html", {"contactform": contactform})

    def post(self, request, *args, **kwargs):

        contactform = CaptchaContactForm(request.POST)

        if contactform.is_valid():

            contactform.save()

            messages.success(
                request, "your messge submitted successfully", "success")

            return redirect('main:contact')

        messages.error(request, "error in submittting the message", "danger")

        return render(request, "contact.html", {"contactform": contactform})
