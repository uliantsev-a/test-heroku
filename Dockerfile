FROM python:3.8

COPY ./ad_api_on_flask /app

RUN pip install -r /app/requirements.txt

WORKDIR /app
#ENV PORT=5000

CMD ["gunicorn", "app:app"]
