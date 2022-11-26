from django.urls import path

from accounts.views import Login_View, Logout_View, Signup_View

app_name = "accounts"

urlpatterns = [

    path('login/', Login_View, name='login'),
    path('logout/', Logout_View, name='logout'),
    path('signup/', Signup_View, name='signup'),
]
