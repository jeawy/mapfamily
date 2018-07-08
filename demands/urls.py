from django.conf.urls import patterns, url
from demands import views
urlpatterns = patterns('demands', 
    url(r'^create/$', views.create, name='create'), 
    url(r'^list/$', views.list, name='list'),  
) 

