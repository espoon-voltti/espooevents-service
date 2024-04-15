from django.db import migrations
from django.core.management import call_command


def forwards_func(apps, schema_editor):
    ids = apps.get_model('events', 'DataSource').objects
    if not ids.exists():
        call_command('loaddata', 'testsource')
    call_command('loaddata', 'hobby_categories')


def reverse_func(apps, schema_editor):
    apps.get_model("events", "HobbyCategory").objects.all().delete()


class Migration(migrations.Migration):
    dependencies = [
        ('events', '0082_auto_20240412_1122')
    ]
    operations = [
        migrations.RunPython(forwards_func, reverse_func)
    ]
