#!/bin/bash
sudo -k
zenity --password --title="Permission Required" | sudo -S bash /home/aarik/Desktop/mountmedia/mountmedia.sh
