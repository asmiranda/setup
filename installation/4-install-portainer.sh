echo "4 - ************Start Portainer Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/portainer
cd ${setup_tmp}/portainer

sudo ufw disable 
sudo ufw allow 8000/tcp
sudo ufw allow 9000/tcp

sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

sudo ufw enable 

cd ${setup_dir}
