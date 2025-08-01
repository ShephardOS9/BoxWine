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

echo "Installing: root-repo, wget, git"
pkg install root-repo -y
pkg install wget -y
pkg install git -y

echo "Installing: hashdeep, x11-repo, termux-am"
pkg install hashdeep -y
pkg install x11-repo -y
pkg install termux-am -y

echo "Installing: wget, root-repo, x11-repo"
pkg install wget -y
pkg install root-repo -y
pkg install x11-repo -y

echo "Installing: termux-x11-nightly, tur-repo, xwayland"
pkg install termux-x11-nightly -y
pkg install tur-repo -y
pkg install xwayland -y

echo "Installing: xorg-xrandr, p7zip, patchelf"
pkg install xorg-xrandr -y
pkg install p7zip -y
pkg install patchelf -y

echo "Installing: ncurses-utils, hashdeep, mesa-zink virglrenderer-mesa-zink vulkan-loader-android virglrenderer-android"
pkg install ncurses-utils -y
pkg install hashdeep -y
pkg install mesa-zink virglrenderer-mesa-zink vulkan-loader-android virglrenderer-android -y

echo "Installing: python-tkinter, xfce4, gimp"
pkg install python-tkinter -y
pkg install xfce4 -y
pkg install gimp -y

echo "Installing: mpv, firefox, vlc"
pkg install mpv -y
pkg install firefox -y
pkg install vlc -y

echo "Installing: vlc-qt, abiword"
pkg install vlc-qt -y
pkg install abiword -y

if [ -e "$PREFIX/glibc" ]; then
    echo -e "\e[33m[i] Existing Glibc installation found at: $PREFIX/glibc\e[0m"
    echo -n "Do you want to remove it before continuing? (Y/n) "
    read i
    if [ "$i" = "Y" ] || [ "$i" = "y" ]; then
        echo -e "\e[31m[-] Removing old Glibc...\e[0m"
        rm -rf "$PREFIX/glibc"
        echo -e "\e[32m[✓] Glibc removed successfully.\e[0m"
    else
        echo -e "\e[34m[•] Installation canceled by user.\e[0m"
        return 1
    fi
fi
sleep 3

echo "Installing Box86 version..."
sleep 3
wget -q --show-progress -O https://github.com/ShephardOS9/BoxWine/releases/download/Box86/box86.tar.xz
tar -xvzf box86.tar.xz -C data/data/com.termux/files

fi
    sleep 3
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
