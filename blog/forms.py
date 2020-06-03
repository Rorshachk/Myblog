from django import forms
from .models import Comment


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['name', 'email', 'text']
        labels = {'name': '', 'email': '', 'text': ''}
        widgets = {'text': forms.Textarea(attrs={'rows': 100, 'cols': 80})}
