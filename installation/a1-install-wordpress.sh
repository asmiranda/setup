echo "A1 - ************Start Wordpress Setup************"

cd ${setup_dir}

sudo mkdir ${setup_tmp}/wordpress
cd ${setup_tmp}/wordpress

sudo cp ${setup_dir}/helper/wordpress-php.ini /etc/php/7.4/fpm/php.ini

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
sudo rm -R /var/www/wordpress
sudo mv /root/tmp/wordpress/wordpress /var/www/wordpress

sudo rm /etc/nginx/sites-available/wordpress.conf
sudo cp ${setup_dir}/conf.d/wordpress.conf /etc/nginx/sites-available/wordpress.conf
sudo sed -i 's/|subdomain|/'+${subdomain}+'/g' /etc/nginx/sites-available/wordpress.conf

sudo chown -R www-data:www-data /var/www/wordpress/
sudo chmod -R 755 /var/www/wordpress/

sudo rm /etc/nginx/sites-enabled/wordpress.conf
sudo ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/wordpress.conf
sudo systemctl restart nginx.service

cd ${setup_dir}
