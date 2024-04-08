# Generated by Django 2.2.28 on 2023-12-12 08:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('notifications', '0003_create_default_user_created_template'),
    ]

    operations = [
        migrations.AlterField(
            model_name='notificationtemplate',
            name='type',
            field=models.CharField(choices=[('unpublished_event_deleted', 'Unpublished event deleted'), ('event_published', 'Event published'), ('draft_posted', 'Draft posted'), ('user_created', 'User created')], db_index=True, max_length=100, unique=True, verbose_name='Type'),
        ),
    ]