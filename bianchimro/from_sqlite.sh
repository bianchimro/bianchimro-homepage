python manage.py dumpdata -n --exclude cms googlemap picture text imagestore imagestore_cms cmsplugin_zinnia > f1.json
python manage.py dumpdata -n cms --exclude=cms.placeholder >  f2.json
python manage.py dumpdata -n cms.placeholder > f3.json

