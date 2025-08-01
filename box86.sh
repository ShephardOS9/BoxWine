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

pkg install root-repo -y
pkg install wget
pkg install git -y
pkg install hashdeep -y
pkg install x11-repo
pkg install termux-am -y
pkg install wget -y
pkg install root-repo -y
pkg install x11-repo -y
pkg install termux-x11-nightly -y
pkg install tur-repo -y
pkg install xwayland -y
pkg install xorg-xrandr -y
pkg install p7zip -y
pkg install patchelf -y
pkg install ncurses-utils -y
pkg install hashdeep -y
pkg install mesa-zink virglrenderer-mesa-zink vulkan-loader-android virglrenderer-android -y
pkg install python-tkinter -y
pkg install xfce4 -y
pkg install gimp -y
pkg install mpv -y
pkg install firefox -y
pkg install vlc -y
pkg install vlc-qt -y
pkg install abiword -y

if [ -e $PREFIX/glibc ]; then
    echo -n "Removing previous glibc. Continue? (Y/n) "
    read i
    if [ "$i" = "Y" ] || [ "$i" = "y" ]; then
        rm -rf $PREFIX/glibc
    else
        return 1
    fi
fi
sleep 3

echo "Installing Box86 version..."
sleep 3
wget -q --show-progress -O /data/data/com.termux/files/usr/glibc.box86.tar.xz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/box86.tar.xz
    sleep 2
    echo "Excracting Box86 build..."
    tar -xf /data/data/com.termux/files/usr/box86.tar.xz -C /data/data/com.termux/files/usr/
    cp /data/data/com.termux/files/usr/glibc/opt/scripts/boxvidra /data/data/com.termux/files/usr/bin
    cp /data/data/com.termux/files/usr/glibc/opt/scripts/wine /data/data/com.termux/files/usr/bin
    chmod +x /data/data/com.termux/files/usr/glibc/opt/scripts/*
    chmod 777 /data/data/com.termux/files/usr/bin/boxwine
    chmod 777 /data/data/com.termux/files/usr/bin/boxwine
    rm /data/data/com.termux/files/usr/box86.tar.xz

    echo "BoxWine Box86 build Installed."


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
