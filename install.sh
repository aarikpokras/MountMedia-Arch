#!/bin/bash
if [ $EUID -ne 0 ]; then printf "\e[1;31mError: \e[0mcould not get permissions for /usr/share/applications. Are you sudo?\n"
else

if [ -f "./.mountmedia-arch-confirmfile" ]; then


## Start main install script ##
sed -i "s|Exec.*|Exec=bash $PWD/mountinit.sh|g" ./mountmedia.desktop
sed -i "s|Icon.*|Icon=$PWD/hdd.png|g" ./mountmedia.desktop
sudo mv ./mountmedia.desktop /usr/share/applications/
#sed -i "s|./mountmedia.sh|$PWD/mountmedia.sh|g" ./mountinit.sh
printf "\e[1;32mDone\x21\e[1;33m\nPlease make sure you do not move this folder or the desktop launcher will not work. If you do, please update the desktop file in \e[1;39m/usr/share/applications/mountmedia.desktop\e[1;33m accordingly.\e[0m\n"

else
  printf "\e[1;31mError: \e[0mPlease run from the mountmedia directory. If you're in the directory, please check to make sure that the \e[1;39m.mountmedia-arch-confirmfile\e[0m file is present.\n"
fi

fi
