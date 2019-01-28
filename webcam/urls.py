from django.urls import path, include

from . import views

urlpatterns = [
        path('', views.WebcamView.as_view(), name='webcam'),
]
