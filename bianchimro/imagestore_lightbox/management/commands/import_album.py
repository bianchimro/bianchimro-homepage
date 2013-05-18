from django.core.management.base import BaseCommand, CommandError
from django.core.files import File

from optparse import make_option
import glob
import os

from imagestore.models import Album, Image


class Command(BaseCommand):

    option_list = BaseCommand.option_list + (
        make_option('--delete',
            action='store_true',
            dest='delete',
            default=False,
            help='Delete poll instead of closing it'),
            
        make_option('--create',
            action='store_true',
            dest='create',
            default=False,
            help='Create album if does not exist'),
            
        make_option('--folder',
            action='store',
            dest='folder',
            default=False,
            help='Folder to import'),
        
        )
        
     
        
    def handle(self, *args, **options):
    
            album_name = args[0]
            folder = options ['folder']
            
            print album_name
            
            try:
                album = Album.objects.get(name=album_name)
    
    
            except Album.DoesNotExist:
                if options['create']:
                    self.stdout.write('Creating album "%s ..."' % album_name)
                    album = Album.objects.create(name=album_name)
                else:
                    raise CommandError('Album "%s" does not exist. If you want to create it use --create' % album_name)
                    
            if options['delete']:
                self.stdout.write('Deleting album "%s ..."' % album_name)
                images = Image.objects.filter(album=album)
                for im in images:
                    im.image.delete()
                    im.delete()
                album.delete()

            #self.stdout.write('Successfully closed poll "%s"' % poll_id)
            
            if folder:
                onlyfiles = [ f for f in os.listdir(folder) if os.path.isfile(os.path.join(folder,f)) ]
                for filename in onlyfiles:
                    print filename
                    title, extension = os.path.splitext(filename)
                    img = Image(album=album, title=title)
                    img.save()
                    f = open(os.path.join(folder,filename))
                    img.image.save(filename, File(f))
                    print img
                
                
                
                