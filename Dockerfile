FROM python:3.10-slim-buster

WORKDIR /app

COPY ./app.py app.py
COPY ./requirements.txt requirements.txt
COPY ./test_routes.py test_routes.py

RUN pip install -r requirements.txt

EXPOSE 5001

CMD ["python", "app.py"]