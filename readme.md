# Install tools

## installing in Ubuntu Server 20.04 LTS (HVM), SSD Volume Type of AWS cloud

- t2.micro

```bash
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install python3
python3 -V
sudo apt-get install python3-pip
sudo apt-get install virtualenv
virtualevn -p python myenv
pip3 install -r requirememts.txt 
sudo apt-get install libmysqlclient-dev
pip3 install Django
pip3 install djangorestframework==3.13.1
pip3 install mysqlclient==2.1.0
mkdir fastcampus
cd fastcampus/
git clone https://github.com/kimiyo/fc_aws_study_202112.git
cd fc_aws_study_202112/
nohup python3 manage.py runserver 0.0.0.0:8000 &
```