#!/bin/bash
disks=$(lsblk | awk '{print $1}' | sed -e 's/├─//g' -e 's/└─//g' -e 's/NAME//g')
index=0
result=$(zenity --entry --entry-text="sda" --text="$(for i in $disks; do ((index++)); echo $index $i; done)" --title="Mount Media" --window-icon="./hdd.png" --ok-label="Next")
if [ "$(lsblk | grep $result >& /dev/null;echo $?)" -eq 0 ]; then
  re2=$(zenity --entry --entry-text="/media/you" --text="Where to mount $result?" --title="Mount Location")
  if [ -d $re2 ]; then
    zenity --info --text="Please enter your password on the terminal window." --title="Permissions needed"
    sudo mount /dev/$result $re2
  else
    zenity --error --text="Invalid mount point. Make sure it's a directory and try again."
  fi
elif [ -z "$result" ]; then
  zenity --error --text="Error: please input a device."
else
  zenity --error --text="Error: device /dev/$result does not exist. Please make sure the disk is connected and try again."
fi
