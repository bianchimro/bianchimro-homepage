python manage.py dumpdata -n --exclude cms googlemap picture text cmsplugin_zinnia > f1.json
python manage.py dumpdata -n cms.placeholder > f2.json
python manage.py dumpdata -n cms googlemap picture text cmsplugin_zinnia --exclude=cms.placeholder> no_cms.json


