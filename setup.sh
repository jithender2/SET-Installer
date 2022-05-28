#!/bin/bash
echo -e "\033[0;31m=============================================="
echo -e "\033[0;33mCreated By Mr.ethical Yt"
echo       "Please subscribe : https://youtube.com/channel/UC9mBBFxkVWsTtLyuHUjvdbg"
echo -e "\033[0;31m=============================================="
echo -e "\033[0m"
echo -e           "\033[0;32mInstalling required packages "
echo -e           "\033[0;32mMake sure you have engough  Data"

apt install python2 -y
apt install python3 -y
apt install figlet -y
apt install wget -y
apt install unzip -y

wget https://www.mediafire.com/file/lwmpcdvky072481/setoolkit.zip/file

cd setoolkit
chmod +x setoolkit
pip install -r requirements.txt
if [ ! -d "/data/data/com.termux/files/usr/etc/setoolkit" ]; then
  mkdir /data/data/com.termux/files/usr/etc/setoolkit  
fi  
cp /data/data/com.termux/files/home/SET-Installer/setoolkit/src/core/config.baseline /data/data/com.termux/files/usr/etc/setoolkit/set.config
if [ ! -d  "/data/data/com.termux/files/usr/share/set" ]; then
  mkdir /data/data/com.termux/files/usr/share/set
fi
cd ..
touch /data/data/com.termux/files/usr/bin/setoolkit
echo  "cd /data/data/com.termux/files/home/SET-Installer/setoolkit" >  /data/data/com.termux/files/usr/bin/setoolkit
echo "./setoolkit" >>  /data/data/com.termux/files/usr/bin/setoolkit
chmod +x  /data/data/com.termux/files/usr/bin/setoolkit
rm setoolkit.zip
clear
echo ""
echo -e "\033[1;91m"
echo "CREATED BY "                                               
figlet "MR.Ethical YT"
echo -e "\033[0;92m=============================================="
echo -e "\033[0;33mSetoolkit installed succesfully"
echo       "Please sibscribe : https://youtube.com/channel/UC9mBB"

echo -e "\033[0;92m=============================================="

echo -e "\033[0mRun 'setoolkit'"
echo ""
