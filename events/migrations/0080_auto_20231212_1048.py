# Generated by Django 2.2.28 on 2023-12-12 08:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0079_allow_blank_as_image_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='HobbyCategory',
            fields=[
                ('label', models.CharField(max_length=20)),
                ('id', models.CharField(max_length=10, primary_key=True, serialize=False)),
            ],
        ),
        migrations.AddField(
            model_name='event',
            name='hobby_categories',
            field=models.ManyToManyField(to='events.HobbyCategory'),
        ),
    ]
