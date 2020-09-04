echo "A3 - ************Start NGINX Proxy Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/nginxproxy
cd ${setup_tmp}/nginxproxy


sudo rm /etc/nginx/sites-available/wordpress.conf
sudo rm /etc/nginx/sites-available/nginx-proxy.conf
sudo cp ${setup_dir}/conf.d/nginx-proxy.conf /etc/nginx/sites-available/nginx-proxy.conf
sudo sed -i 's/|subdomain|/'${subdomain}'/g' /etc/nginx/sites-available/nginx-proxy.conf

sudo rm /etc/nginx/sites-enabled/wordpress.conf
sudo rm /etc/nginx/sites-enabled/nginx-proxy.conf
sudo ln -s /etc/nginx/sites-available/nginx-proxy.conf /etc/nginx/sites-enabled/nginx-proxy.conf
sudo systemctl restart nginx.service


cd ${setup_dir}
