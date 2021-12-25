FROM python:3.6.7
ENV PYTHONUNBUFFERED 1

RUN apt-get -y update
RUN apt-get -y install vim

RUN mkdir /srv/docker-django
ADD ./src/docker-django

WORKDIR /src/docker-django

RUN pip install --upgrade pip
RUN pip install -r requirememts.txt

EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
