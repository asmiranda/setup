echo "***********Start Provision Client Setup************"

export subdomain=""

if [ "$1" != "" ]; then
    export subdomain=$1
else
    export subdomain=""
fi
echo "subdomain=="${subdomain}

export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo chmod -R 777 .
sudo chmod -R 777 installation/.
sudo mkdir ${setup_tmp}
sudo mkdir ${setup_tmp}/migration

# installation/0-install-initsetup.sh
# installation/1-install-getsource.sh
# installation/2-install-webmin.sh
# installation/3-install-docker.sh
# installation/4-install-portainer.sh
# installation/5-install-mysql.sh
# note: need to manually connect as  root to mysql thru webmin before resume.
# installation/7-install-nginx.sh
# installation/8-install-php.sh

# installation/a1-install-wordpress.sh
installation/a2-install-dynamiko-docker.sh
installation/a3-install-nginxproxy.sh
# installation/a4-install-python.sh
installation/a5-install-certbot.sh
# installation/a7-install-coturn.sh
# installation/a8-install-firewall.sh

sudo ufw disable 


cd ${setup_dir}
echo "-- setup dir --- "
pwd
sudo git checkout .
sudo chmod -R 777 .
