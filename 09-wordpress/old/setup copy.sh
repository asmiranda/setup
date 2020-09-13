export setup_dir=$(pwd)

mkdir nginx-proxy && cd nginx-proxy

git clone https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion.git .

cp proxy-companion.env nginx-proxy/.env

./start.sh

cd .. && mkdir wordpress-letsencrypt && cd wordpress-letsencrypt
git clone https://github.com/evertramos/docker-wordpress-letsencrypt.git .

cp ${setup_tmp}/wordpress-letsencrypt-docker-compose.yml .
cp ${setup_tmp}/wordpress-letsencrypt-env .env

docker-compose up -d

cd ${setup_tmp}

