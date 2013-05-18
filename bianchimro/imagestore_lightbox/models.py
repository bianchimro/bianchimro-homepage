from cms.models import CMSPlugin
from django.db import models
from imagestore.models import Album
from django.utils.translation import ugettext_lazy as _
from django.conf import settings


DEFAULT_TEMPLATE = "imagestore_lightbox/lightbox.html"
TEMPLATE_CHOICES = ((DEFAULT_TEMPLATE, 'Default lightbox template'),)

class ImagestoreAlbumLightBox(CMSPlugin):
    """
    """
    album = models.ForeignKey(Album, verbose_name=_('Album'), blank=False, null=False)
    skin = models.CharField(max_length=100, verbose_name=_('Skin (css classes)'), default='', blank=True)
    limit = models.IntegerField(verbose_name=_('Image limit'), blank=True, null=True)
    size = models.CharField(max_length=20, verbose_name=_('Thumbnail size'), default='120x120')
    full_size = models.CharField(max_length=20, verbose_name=_('Full size view'), default='600x600')
    allow_slideshow = models.BooleanField(default=True)
    template_file = models.CharField(max_length=100, verbose_name=_('Template file'), default=DEFAULT_TEMPLATE, choices=TEMPLATE_CHOICES)