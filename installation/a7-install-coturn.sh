echo "a7 - ************Start Coturn Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/coturn
cd ${setup_tmp}/coturn

sudo apt-get update -y
sudo apt-get install coturn -y

sudo cp ${setup_dir}/conf.d/coturn /etc/default
sudo cp ${setup_dir}/conf.d/turnserver.conf /etc

sudo service coturn restart

cd ${setup_dir}
