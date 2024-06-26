# Generated by Django 2.2.28 on 2024-04-29 06:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0085_add_translations_to_hobby_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='description_html_ar',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
        migrations.AddField(
            model_name='event',
            name='description_html_en',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
        migrations.AddField(
            model_name='event',
            name='description_html_fi',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
        migrations.AddField(
            model_name='event',
            name='description_html_ru',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
        migrations.AddField(
            model_name='event',
            name='description_html_sv',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
        migrations.AddField(
            model_name='event',
            name='description_html_zh_hans',
            field=models.TextField(blank=True, null=True, verbose_name='Html description'),
        ),
    ]
