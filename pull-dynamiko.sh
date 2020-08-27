echo "***********Start VPS Setup************"

export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo chmod -R 777 .
sudo chmod -R 777 installation/.
sudo mkdir ${setup_tmp}

installation/1-install-getsource.sh

cd ${setup_dir}
echo "-- setup dir --- "
pwd
sudo git checkout .
sudo chmod -R 777 .
