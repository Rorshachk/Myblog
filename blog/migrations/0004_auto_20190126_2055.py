# Generated by Django 2.1.5 on 2019-01-26 12:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20190126_1322'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='email',
            field=models.EmailField(default='Your email', max_length=200),
        ),
        migrations.AlterField(
            model_name='comment',
            name='name',
            field=models.CharField(default='Your name', max_length=100),
        ),
    ]
