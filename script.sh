#!/bin/bash

#===============================================================================================
#   System Required:  Ubuntu 16.04/18.04 (64bit)
#   Description:  A tool to autoinstall the RunCloud and custom features
#   Author: CDK
#===============================================================================================

# Paste the RunCloud script from web panel instead of example
# export DEBIAN_FRONTEND=noninteractive; echo 'Acquire::ForceIPv4 "true";' | tee /etc/apt/apt.conf.d/99force-ipv4; apt-get update; apt-get install curl -y; apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade -y; curl --silent --location https://manage.runcloud.io/script/installer/link | bash -; export DEBIAN_FRONTEND=newt

echo "=============================="
echo "nanorc - Improved Nano Syntax Highlighting Files"
echo "=============================="
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

echo "=============================="
echo "wp cli - ianstall and add bash-completion for user www-data"
echo "=============================="
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wp --info

echo "=============================="
echo "Downloading: adminer installer - adminer.sh"
echo "=============================="
cd /usr/local/bin && sudo wget https://gist.githubusercontent.com/DimaMinka/9bc8cc1f45a32dfdafd0c270e28af1c8/raw/fc6328f2d8a6a37f6e77916331f0bda8f7649b08/adminer.sh
sudo chmod +x adminer.sh

echo "=============================="
echo "Downloading: search-replace-database installer - srdb.sh"
echo "=============================="
cd /usr/local/bin && sudo wget https://gist.githubusercontent.com/DimaMinka/24c3df57a78dd841a534666a233492a9/raw/d5ca7209164c7a22879fc7863f1bac1f0145ba84/srdb.sh
sudo chmod +x srdb.sh

echo "=============================="
echo "Downloading: zImageOptimizer - zio.sh"
echo "=============================="
cd /usr/local/bin && sudo wget https://raw.githubusercontent.com/zevilz/zImageOptimizer/master/zImageOptimizer.sh
sudo mv zImageOptimizer.sh zio.sh
sudo chmod +x zio.sh

echo "=============================="
echo "Delete self"
echo "=============================="
rm -- "$0"
