from django.test import TestCase

from helevents.models import User


class TestUser(TestCase):

    def setUp(self):
        self.permuser = User.objects.create(username='testuser')

    def test_user_model_permissions(self) -> None:
        self.assertTrue(self.permuser.has_perm('events.add_event'))
        self.assertTrue(self.permuser.has_perm('events.view_event'))
        self.assertTrue(self.permuser.has_perm('events.change_event'))
        self.assertTrue(self.permuser.has_perm('events.delete_event'))
