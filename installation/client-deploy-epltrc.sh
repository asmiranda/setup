echo "************Start EPLTRC Setup************"

export setup_dir=/root/setup
export setup_tmp=/root/tmp

cd ${setup_dir}/helper

docker-compose -f ./epltrc.docker-compose.yml stop
docker-compose -f ./epltrc.docker-compose.yml up -d

sudo cp ${setup_dir}/conf.d/epltrc-nginx-proxy.conf /etc/nginx/sites-available/epltrc-nginx-proxy.conf
sudo ln -s /etc/nginx/sites-available/epltrc-nginx-proxy.conf /etc/nginx/sites-enabled/epltrc-nginx-proxy.conf
sudo systemctl restart nginx.service

echo "EPLTRC Up and Running"

cd ${setup_dir}
