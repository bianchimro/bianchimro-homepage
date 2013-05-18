from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from models import ImagestoreAlbumLightBox, DEFAULT_TEMPLATE
from django.utils.translation import ugettext_lazy as _
from django.conf import settings


class AlbumLightboxPlugin(CMSPluginBase):
    model = ImagestoreAlbumLightBox
    name = _('Album as lightbox')
    render_template = DEFAULT_TEMPLATE
    text_enabled = True

    def render(self, context, instance, placeholder):


        if instance.template_file:
            self.render_template = instance.template_file
        
        images = instance.album.images.all()
        if instance.limit:
            images = images[:instance.limit]
        context.update({'images': images, 'lightbox': instance})
        return context

plugin_pool.register_plugin(AlbumLightboxPlugin)