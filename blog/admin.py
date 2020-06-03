from django.contrib import admin
from blog.models import Topic, Passage, Comment
# Register your models here.
admin.site.register(Topic)
admin.site.register(Passage)
admin.site.register(Comment)
