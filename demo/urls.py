from django.conf.urls import url 
from . import views


urlpatterns = [
    url(r'^demo1/$', views.demo1, name='demo1'), 
    url(r'^demo2/$', views.demo2, name='demo2'), 
]