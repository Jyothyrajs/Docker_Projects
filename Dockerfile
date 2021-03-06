# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["export", "FLASK_APP=app"]
CMD ["export", "FLASK_ENV=development"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
