# Install tools

## installing in Ubuntu Server 20.04 LTS (HVM), SSD Volume Type of AWS cloud

- t2.micro

```bash
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
