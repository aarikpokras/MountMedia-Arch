# Mount Media
Mount Media is a simple program written in bash that can mount devices from a GUI. It does require zenity though, because I'm too lazy to learn GTK+ dialogs for C++.

## [Get the Program](https://github.com/aarikpokras/mountmedia-arch/archive/refs/heads/master.zip)
To install, run:
```bash
sudo sh install.sh
```
Make sure you're in the directory that you downloaded Mount Media to.

After it installs, it should show up in your start menu under either "Accessories" or "Settings".

## Installing Zenity
For Arch Linux, run:
```bash
sudo pacman -Syu zenity
```
For Ubuntu and Debian and pretty much any other distro that uses apt:
```bash
sudo apt install zenity
```

Keep in mind that this is a graphical program. If you're running an OS headlessly, this program won't work for you.
