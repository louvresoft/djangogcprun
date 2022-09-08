FROM python:3.10-slim

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

WORKDIR /app

ENV PORT 8080

CMD gunicorn --bind :$PORT --workers 3 djangoGCPCRUN.wsgi:application