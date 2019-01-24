from django.conf.urls import url
# from django.contrib.auth.views import login

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^passages/(?P<passage_id>\d+)/$', views.passage, name='passage'),
]
