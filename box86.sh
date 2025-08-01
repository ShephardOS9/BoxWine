#!/bin/bash
clear
echo "Installing termux-am..."
sleep 2
pkg install termux-am -y

termux-setup-storage

while true; do
    if [ -d ~/storage/shared ]; then
        break
    else
        echo "Storage permission denied."
    fi
    sleep 3
done

echo "Installing termux packages"
sleep 3
apt-get clean
apt-get update
apt-get -y 
pkg install x11-repo -y 
pkg install pulseaudio -y 
pkg install xwayland -y 
pkg install wget -y 
pkg install tsu -y 
pkg install root-repo -y
pkg install patchelf -y
pkg install p7zip -y
pkg install xorg-xrandr -y
pkg install ncurses-utils -y 
pkg install hashdeep -y
pkg install termux-x11-nightly -y

if [ -e $PREFIX/glibc ]; then
    echo -n "Removing previous glibc. Continue? (Y/n) "
    read i
    if [ "$i" = "Y" ] || [ "$i" = "y" ]; then
        rm -rf $PREFIX/glibc
    else
        return 1
    fi
fi

echo "Installing WoW64 version..."
sleep 3

fi
. $PREFIX/glibc/opt/package-manager/package-manager
sync-all

if [ "$INSTALL_WOW64" = "1" ]; then
sync-package wine-9.3-vanilla-wow64
else
sync-package wine-ge-custom-8-25
fi

ln -sf $PREFIX/glibc/opt/scripts/boxwine $PREFIX/bin/boxwine
echo "BoxWine successfully instaled!"
sleep 3
echo "To start - type \"boxwine\""
