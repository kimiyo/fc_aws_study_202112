# Install tools

## in Ubunto of AWS cloud

'''bash
    1  sudo apt-get update
    2  sudo apt-get install build-essential
    3  sudo apt-get install python3
    4  python -V
    5  python3 -V
    6  sudo apt-get install python3-pip
    7  exit
    8  ssh-keygen -t rsa
    9  ls ~/.ssh
   10  cat ~/.ssh/id_rsa.pub
   11  mkdir fastcampus
   12  cd fastcampus/
   13  git clone https://github.com/kimiyo/fc_aws_study_202112.git
   14  ls
   15  cd fc_aws_study_202112/
   16  sudo apt-get install virtualenv
   17  virtualevn -p python myenv
   18  virtualenv -p python myenv
   19  pip3 install -r requirememts.txt 
   20  sudo apt-get install libmysqlclient-dev
   21  python3 manage.py runserver
   22  pip list
   23  pip3 install Django
   24  pip3 install Djangodjangorestframework
   25  pip list
   26  pip3 install djangorestframework==3.13.1
   27  python3 manage.py runserver
   28  pip3 install mysqlclient==2.1.0
   29  python3 manage.py runserver
   30  python3 manage.py runserver 0.0.0.0:8000
   31  git pull
   32  python3 manage.py runserver 0.0.0.0:8000
   33  nohup python3 manage.py runserver 0.0.0.0:8000 &
   34  ps
   35  history
'''