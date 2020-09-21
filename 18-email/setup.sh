export setup_dir=$(pwd)
export setup_tmp=/root/tmp

# use https://www.linode.com/docs/email/mail-in-a-box/how-to-create-an-email-server-with-mail-in-a-box/

sudo git checkout .
sudo git pull 
sudo mkdir ${setup_tmp} && cd ${setup_dir}

echo "************Start Email Setup************"
# need to do this in the terminal

sudo apt-get update && sudo apt-get upgrade
curl -s https://mailinabox.email/setup.sh | sudo bash


cd ${setup_dir}
