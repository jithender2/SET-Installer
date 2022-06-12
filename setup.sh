#!/bin/bash

echo -e "\033[1;31m
      ███╗   ███╗██████╗     ███████╗████████╗██╗  ██╗██╗ ██████╗ █████╗ ██╗         ██╗   ██╗████████╗
      ████╗ ████║██╔══██╗    ██╔════╝╚══██╔══╝██║  ██║██║██╔════╝██╔══██╗██║         ╚██╗ ██╔╝╚══██╔══╝
      ██╔████╔██║██████╔╝    █████╗     ██║   ███████║██║██║     ███████║██║          ╚████╔╝    ██║   
      ██║╚██╔╝██║██╔══██╗    ██╔══╝     ██║   ██╔══██║██║██║     ██╔══██║██║           ╚██╔╝     ██║   
      ██║ ╚═╝ ██║██║  ██║    ███████╗   ██║   ██║  ██║██║╚██████╗██║  ██║███████╗       ██║      ██║   
      ╚═╝     ╚═╝╚═╝  ╚═╝    ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝       ╚═╝      ╚═╝   
                                                                                                 
"
echo -e "\033[1;92m                           INSTALLING REQUIRED PACKAGES.... "
echo -e "\033[0m"
echo -e "\033[1;92minstalling python2"; apt install python2 -y > /dev/null 2>&1;echo "done."
echo -e "\033[1;92minstalling python3 ";apt install python3 -y > /dev/null 2>&1;echo "done."
echo -e "\033[1;92minstalling wget ";apt install wget -y > /dev/null 2>&1;echo "done."
echo -e "\033[1;92minstalling wget ";apt install unzip -y > /dev/null 2>&1;echo "done."
echo  -e "\033[0m"
wget  https://gitlab.com/jithender2/setoolkit/-/raw/b0fcae286c982cd9a2221d651291260b7624ea24/setoolkit.zip
unzip setoolkit.zip

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
echo -e "\033[0;92m=============================================="
echo -e "\033[0;33mSetoolkit installed succesfully"
echo       "Please sibscribe : https://youtube.com/channel/UC9mBB"

echo -e "\033[0;92m=============================================="

echo -e "\033[0mRun 'setoolkit'"
echo ""
