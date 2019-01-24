from django.shortcuts import render
from .models import Topic, Passage
# Create your views here.

def index(request):
    passages = Topic.objects.order_by('date_added')
    context = {'passages': passages}
    return render(request, 'blog/index.html', context)

def passage(request, passage_id):
    passage = Passage.objects.get(id=passage_id)
    context = {'title': passage.title, 'text': passage.text}
    return render(request, 'blog/passage.html', context)
