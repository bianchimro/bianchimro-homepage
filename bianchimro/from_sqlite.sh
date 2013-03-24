python manage.py dumpdata -n --exclude cms > f1.json
python manage.py dumpdata -n cms --exclude=cms.placeholder >  f2.json
python manage.py dumpdata -n cms.placeholder > f3.json
