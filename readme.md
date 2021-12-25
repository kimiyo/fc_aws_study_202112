# Install tools

## installing in Ubuntu Server 20.04 LTS (HVM), SSD Volume Type of AWS cloud

- t2.micro

```bash
#!/bin/bash
sudo apt-get -y update
sudo apt-get -y  install build-essential
sudo apt-get -y  install python3
python3 -V
sudo apt-get -y  install python3-pip
sudo apt-get -y  install virtualenv
sudo apt-get -y  install libmysqlclient-dev
virtualenv -p python myenv
source ./myenv/bin/activate
mkdir fastcampus
cd fastcampus/
git clone https://github.com/kimiyo/fc_aws_study_202112.git
cd fc_aws_study_202112/
pip3 install -r requirememts.txt 
cd fastcampus
myhostname=`curl http://169.254.169.254/latest/meta-data/public-hostname`
sed -i "s/ALLOWED_DATA_NAME_FOR_EC2/$myhostname/g" settings.py
cd ..
nohup python3 manage.py runserver 0.0.0.0:8000 &
```

## replace host name

```bash
cd fastcampus
sed -i 's/ALLOWED_DATA_NAME_FOR_EC2/ec2-13-125-22-74.ap-northeast-2.compute.amazonaws.com/g' settings.py
#sed -i 's/ec2-3-34-90-214.ap-northeast-2.compute.amazonaws.com/ec2-13-125-22-74.ap-northeast-2.compute.amazonaws.com/g' settings.py
```

## init in EC2

```bash
#!/bin/bash
mkdir fastcampus
cd fastcampus/
git clone https://github.com/kimiyo/fc_aws_study_202112.git
cd fc_aws_study_202112/
chmod +x initmyapp.sh
./initmyapp.sh
```

## docer install 

```bash
curl -fsSL https://get.docker.com/ |sudo sh
sudo usermod -a -G docker $USER
docker -V
vi Dockerfile
```

```
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
```

## docker build

```
docker rm $(docker ps -a -q)
docker rmi 78c0b04503fa

docker build -t docker/django .
docker image list
docker run -p 8000:8000 docker/django
docker run -d -p 8000:8000 docker/django
docker stop 7453f282a047
```

## docker compose

```
sudo curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd ..
mkdir nginx
cd nginx
vi nginx.conf
```

## nginx 

```
docker build -t docker/nginx .
docker run -p 80:80 docker/nginx
docker run -d -p 80:80 docker/nginx

```

## docker compose

```
docker image rm --force
docker-compose up -d --build
docker-compose ps
```