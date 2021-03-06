from django.shortcuts import render

# Create your views here.
from django.shortcuts import get_object_or_404
from .models import Topic, Passage
from .forms import CommentForm
from django.http import HttpResponseRedirect
from django.urls import reverse
import markdown
# Create your views here.


def index(request):
    tmp_passages = Passage.objects.order_by('-date_added')
    passages = []

    for passage in tmp_passages[:10]:
        passages.append(passage)

    context = {'passages': passages}
    return render(request, 'blog/index.html', context)


def admin(request):
    return HttpResponseRedirect("/admin/")


def topic(request, topic_text):
    topic = get_object_or_404(Topic, text=topic_text)
    tmp_passages = topic.passage_set.order_by('-date_added')

    passages = []
    other_passages = []

    for passage in tmp_passages[:10]:
        passages.append(passage)

    cnt = 0
    for x in range(0, len(tmp_passages), 10):
        cnt += 1
        other_passages.append(str(cnt))

    context = {'topic': topic, 'passages': passages, 'other_passages': other_passages, 'page_number': "1"}
    return render(request, 'blog/topic.html', context)


def passage(request, passage_id):
    passage = get_object_or_404(Passage, id=passage_id)
    passage.text = markdown.markdown(passage.text, extensions=[
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.toc',
    ])
    comments = passage.comment_set.order_by('-date_added')

    if request.method != 'POST':
        form = CommentForm()
    else:
        form = CommentForm(request.POST)
        if form.is_valid():
            new_comment = form.save(commit=False)
            new_comment.passage = passage
            new_comment.save()
            return HttpResponseRedirect(reverse('blog:passage', args=[passage_id]))

    context = {'comments': comments, 'passage': passage, 'form': form}
    return render(request, 'blog/passage.html', context)


def page(request, topic_text, page_number):
    topic = get_object_or_404(Topic, text=topic_text)
    tmp_passages = topic.passage_set.order_by('-date_added')
    start = (int(page_number) - 1) * 10
    passages = []
    other_passages = []

    for passage in tmp_passages[start:(start + 10)]:
        passages.append(passage)

    cnt = 0
    for x in range(0, len(tmp_passages), 10):
        cnt += 1
        other_passages.append(str(cnt))

    context = {'topic': topic, 'passages': passages, 'other_passages': other_passages,
               'page_number': page_number}
    return render(request, 'blog/topic.html', context)
