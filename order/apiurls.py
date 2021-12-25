from django.urls import path
from order import apiviews

urlpatterns = [
    path('shops/', apiviews.shop, name="shop"),
    path('menus/<int:shop>', apiviews.menu, name="menu"),
    path('order/<int:shop>', apiviews.order, name="order"),
    path('orderfood/<int:order>', apiviews.orderfood, name="order"),
]
