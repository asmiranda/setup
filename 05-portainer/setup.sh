export setup_dir=$(pwd)
export setup_tmp=/root/tmp

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Portainer Setup************"

cd ${setup_tmp}/portainer
# sudo docker rm -vf portainer

sudo docker volume create portainer_data

sudo docker run -d -p 9000:9000 -p 8000:8000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -v /etc/letsencrypt/live/dynamikosoft.com:/certs:ro portainer/portainer --ssl --sslcert /certs/fullchain.pem --sslkey /certs/privkey.pem

cd ${setup_dir}
