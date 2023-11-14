#!/bin/bash
sudo -k
zenity --password --title="Permission Required" | sudo -S bash ./mountmedia.sh
