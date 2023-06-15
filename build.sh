#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requeriments.txt

python manage.py collectstatic --no-input
python manage.py migrate

# create superuser
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'joraazam@espol.edu.ec', 'admin12345678')" | python manage.py shell