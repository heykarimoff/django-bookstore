#!/bin/sh

echo "Appling migrations"
python manage.py migrate

echo "Collecting static files"
python manage.py collectstatic --no-input

echo "Starting the server"
python manage.py runserver 0.0.0.0:8000
