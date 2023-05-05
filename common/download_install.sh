#!/bin/sh
if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi
export DEBIAN_FRONTEND=noninteractive
if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

echo "vamos baixar os arquivos necessários:)"
GITHUB_REPOSITORY=hiddify-config
GITHUB_USER=clecio81
GITHUB_BRANCH_OR_TAG=main

# if [ ! -d "/opt/$GITHUB_REPOSITORY" ];then
        apt update
        apt upgrade -y
        apt install -y wget python3-pip dialog unzip
        rm -Rf 'main.zip'
        mkdir -p /opt/$GITHUB_REPOSITORY
        cd /opt/
        wget https://github.com/clecio81/hiddify-config/archive/refs/heads/main.zip
        unzip -o 'main.zip'
        mv hiddify-config-main hiddify-config
        rm -Rf hiddify-config-main
        rm 'main.zip'
        bash install.sh
        # exit 0
# fi 


echo "/opt/hiddify-config/menu.sh">>~/.bashrc
echo "cd /opt/hiddify-config/">>~/.bashrc

read -p "Press any key to go  to menu" -n 1 key
cd /opt/$GITHUB_REPOSITORY
bash menu.sh
