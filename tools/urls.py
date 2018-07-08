from django.conf.urls import  include, url
from tools import views

urlpatterns = [
    url('^merge_kb/$', views.merge_kb, name="merge_kb"),
    url('^update_sites/$', views.update_sites, name="update_sites"),
]