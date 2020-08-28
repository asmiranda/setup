echo "A4 - ************Start Certbot Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/python
cd ${setup_tmp}/python

sudo apt update -y
sudo apt install software-properties-common -y 
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update -y

sudo apt install python3.8 -y
sudo python ––version


cd ${setup_dir}
