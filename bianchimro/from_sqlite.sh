python manage.py dumpdata -n --exclude cms googlemap picture text imagestore_cms cmsplugin_zinnia > f1.json
python manage.py dumpdata -n cms.placeholder > f2.json
python manage.py dumpdata -n cms googlemap picture text cmsplugin_zinnia imagestore_cms --exclude=cms.placeholder >  f3.json


