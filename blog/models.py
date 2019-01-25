from django.db import models

# Create your models here.
from django.db import models


# Create your models here.
class Topic(models.Model):
    text = models.CharField(max_length=200)
    date_added = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.text

class Passage(models.Model):
    topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    text = models.TextField()
    date_added = models.DateTimeField()

    def __str__(self):
        return self.title

class Comments(models.Model):
    post = models.ForeignKey(Passage, related_name='comments',on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=200)
    body = models.TextField()

    date_added = models.DateTimeField(auto_now_add=True)
