#!/bin/bash
mkdir fastcampus
cd fastcampus/
git clone https://github.com/kimiyo/fc_aws_study_202112.git
cd fc_aws_study_202112/

sudo apt-get -y update
sudo apt-get -y  install build-essential
sudo apt-get -y  install python3
python3 -V
sudo apt-get -y  install python3-pip
sudo apt-get -y  install virtualenv
sudo apt-get -y  install libmysqlclient-dev
virtualenv -p python myenv
source ./myenv/bin/activate
pip3 install -r requirememts.txt 
cd fastcampus
myhostname=`curl http://169.254.169.254/latest/meta-data/public-hostname`
sed -i "s/ALLOWED_DATA_NAME_FOR_EC2/$myhostname/g" settings.py
cd ..
#nohup python3 manage.py runserver 0.0.0.0:8000 &
