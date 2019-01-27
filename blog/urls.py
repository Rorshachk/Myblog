from django.conf.urls import url
# from django.contrib.auth.views import login

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^admin/$', views.admin, name='admin'),
    url(r'^passage/(?P<passage_id>\d+)/$', views.passage, name='passage'),
    url(r'^topic/(?P<topic_text>\S+)/page/(?P<page_number>\d+)/$', views.page, name='page'),
    url(r'^topic/(?P<topic_text>\S+)/$', views.topic, name='topic'),
]