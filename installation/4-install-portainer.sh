echo "4 - ************Start Portainer Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/portainer
cd ${setup_tmp}/portainer

sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

cd ${setup_dir}
