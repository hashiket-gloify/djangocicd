set -e

docker pull hashiket/django-app

docker run -d -p 8000:8000 hashiket/django-app