from django.conf.urls import patterns, include, url
from wx import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = patterns('wx',
url(r'^$', views.index, name='index')
)+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)