from django.urls import path

from accounts.views import Login_View, Logout_View, Signup_View

from django.views.generic import TemplateView

from django.contrib.auth import views as auth_views

app_name = "accounts"

urlpatterns = [

    path('login/', Login_View, name='login'),
    path('logout/', Logout_View, name='logout'),
    path('signup/', Signup_View, name='signup'),
    # path('password_reset/',
    #      auth_views.PasswordResetView.as_view(template_name="accounts/password_reset.html"), name="password_reset"),
    # path('accounts/password_reset/done/', auth_views.PasswordResetDoneView.as_view(
    #     template_name="accounts/password_reset_done.html"), name='password_reset_done'),
    # path('accounts/password_reset/complete/', auth_views.PasswordResetCompleteView.as_view(
    #     template_name="accounts/password_reset_complete.html"), name='password_reset_complete'),

    path('welcome/', TemplateView.as_view(template_name="accounts/welcome.html"), name='welcome'),

]
