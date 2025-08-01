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


wget -q --show-progress -O /data/data/com.termux/files/usr/box64-binaries.tar.xz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/box64-binaries.tar.xz
tar -xvzf $HOME/box64-binaries.tar.xz -C $PREFIX 

wget -q --show-progress -0 /data/data/com.termux/files/usr/dxvk.tar.xz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/dxvk.tar.xz
tar -xvzf $HOME/dxvk.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/en-ru-locate.tar.xz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/en-ru-locate.tar.xz
tar -xvzf $HOME/en-ru-locate.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/glibc-prefix.tar.xz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc-prefix.tar.xz
tar -xvzf $HOME/glibc-prefix.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/glibc_package_manager.tar.gz https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc_package_manager.tar.gz
tar -xvzf $HOME/glibc_package_manager.tar.gz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/libudev.tar.xz https://github.com/ShephardOS9/BoxWine/releases/donwload/Box86/libudev.tar.xz
tar -xvzf $HOME/libudev.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/package-manager https://github.com/ShephardOS9/releases/download/Box86/package-manager
tar -xvzf $HOME/package-manager -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/prefix-apps.tar.xz https://github.com/ShephardOS9/releases/download/Box86/prefix-apps.tar.xz
tar -xvzf $HOME/prefix-apps.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/scripts.tar.xz https://github.com/ShephardOS9/releases/download/Box86/scripts.tar.xz
tar -xvzf $HOME/scripts.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/turnip.tar.xz https://github.com/ShephardOS9/releases/download/Box86/turnip.tar.xz
tar -xvzf $HOME/turnip.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/virgl-mesa.tar.xz https://github.com/ShephardOS9/releases/download/Box86/virgl-mesa.tar.xz
tar -xvzf $HOME/virgl-mesa.tar.xz -C $PREFIX

wget -q --show-progress -0 /data/data/com.termux/files/usr/wine-ge-custom-8-25.tar.xz https://github.com/ShephardOS9/releases/download/Box86/wine-ge-custom-8-25.tar.xz
tar -xvzf $HOME/wine-ge-custom-8-25.tar.xz

wget -q --show-progress -0 /data/data/com.termux/files/usr/wined3d.tar.xz https://github.com/ShephardOS9/releases/download/Box86/wined3d.tar.xz
tar -xvzf $HOME/wined3d.tar.xz -C $PREFIX

fi
. $PREFIX/glibc/opt/package-manager/package-manager
sync-all

if [ "$INSTALL_WOW64" = "1" ]; then
sync-package wine-9.3-vanilla-wow64
else
sync-package wine-ge-custom-8-25
fi

ln -sf $PREFIX/glibc/opt/scripts/boxwine $PREFIX/bin/boxwine
echo "To start - type \"boxwine\""
