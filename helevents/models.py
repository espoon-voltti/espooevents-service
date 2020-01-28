import logging

from django.contrib.auth.models import Permission
from django.db.models import signals
from django.dispatch import receiver

from helusers.models import AbstractUser

from events.permissions import UserModelPermissionMixin

logger = logging.getLogger(__name__)


class User(AbstractUser, UserModelPermissionMixin):
    def __str__(self):
        return ' - '.join([self.get_display_name(), self.email])

    def get_display_name(self):
        return '{0} {1}'.format(self.first_name, self.last_name).strip()

    def get_default_organization(self):
        admin_org = self.admin_organizations.filter(
            replaced_by__isnull=True,
        ).order_by('created_time').first()

        regular_org = self.organization_memberships.filter(
            replaced_by__isnull=True,
        ).order_by('created_time').first()

        return admin_org or regular_org

    def is_admin(self, publisher):
        return publisher in self.get_admin_organizations_and_descendants()

    def is_regular_user(self, publisher):
        return self.organization_memberships.filter(id=publisher.id).exists()


@receiver(signals.post_save, sender=User)
def add_permissions(sender, instance, created, *args, **kwargs):
    if created and not instance.is_superuser:
        msg = "User Model Instance created, applying EspooEvents CRUD permissions to User instance"
        logger.debug(msg)
        logger.info(msg)
        perms = Permission.objects.filter(codename__iregex=r'^(?:add|change|view|delete)_event$')
        instance.user_permissions.set(perms)
