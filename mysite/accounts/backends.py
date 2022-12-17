from django.contrib.auth.backends import BaseBackend

from django.db.models import Q

from django.contrib.auth import get_user_model

from django.contrib.auth.hashers import check_password

MyUser = get_user_model()


class UsernameOrEmailBackend(object):
    def authenticate(self, request, username=None, password=None):
        try:
            user = MyUser.objects.get(
                Q(username=username) | Q(email=username)
            )

        except MyUser.DoesNotExist:
            return None

        if user and check_password(password, user.password):
            return user

        return None

    def get_user(self, user_id):
        try:
            return MyUser.objects.get(pk=user_id)
        except MyUser.DoesNotExist:
            return None
