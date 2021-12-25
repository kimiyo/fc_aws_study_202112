from django.urls import path
from user import apiviews

urlpatterns = [
    path('user/', apiviews.user, name="user"),
]
