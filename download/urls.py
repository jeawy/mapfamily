from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from download import views

urlpatterns = patterns('download', 
    url(r'^view_vedio/$', views.view_vedio, name='view_vedio'),
    url(r'^vedio/$', views.vedio, name='vedio'),  
)+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
