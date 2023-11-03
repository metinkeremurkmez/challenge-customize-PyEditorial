FROM python:3.9

WORKDIR /app
COPY . .

RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt

# migrations
RUN python manage.py makemigrations content
RUN python manage.py migrate
# static
RUN python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["gunicorn", "PyEditorial.wsgi:application", "--bind", "0.0.0.0:8000"]
