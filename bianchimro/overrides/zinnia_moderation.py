# This file can be located in the root directory of your project.
# You should import this module at the loading of the project.
# Exemple, in the urls.py module of your project.
#
# import myproject.project_moderation

from django.conf import settings
from django.utils.translation import activate
from django.utils.translation import get_language
from django.contrib.comments.moderation import moderator

from zinnia.models import Entry
from zinnia.moderator import EntryCommentModerator

class ProjectEntryCommentModerator(EntryCommentModerator):

    def email(self, comment, content_object, request):
        """Always send mail on new comments"""
        current_language = get_language()
        try:
            activate(settings.LANGUAGE_CODE)
            if self.mail_comment_notification_recipients:
	        self.do_email_notification(comment, content_object,
                                           request)
            if self.email_authors:
                self.do_email_authors(comment, content_object,
                                      request)
            if self.email_reply:
                self.do_email_reply(comment, content_object, request)
        finally:
            activate(current_language)



moderator.unregister(Entry)
moderator.register(Entry, ProjectEntryCommentModerator)