#!/bin/bash
clear
echo "Installing emulator, and scripts for emulator..."
sleep 3

wget https://github.com/ShephardOS9/BoxWine/raw/main/scripts.zip -O $PREFIX/scripts.zip
unzip -o $PREFIX/scripts.zip -d $PREFIX

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/box86-box64-binaries.tar.xz
tar -xvzf box86-64-binaries.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/dxvk.tar.xz
tar -xzvf dxvk.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc-prefix.tar.xz
tar -xzvf glibc-prefix.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc_package_manager.tar.gz
tar -xvzf glibc_package_manager.tar.gz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/turnip.tar.xz
tar -xzvf turnip.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/virgl-mesa.tar.xz
tar -xzvf virgl-mesa.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/wine-ge-custom-8-25.tar.xz
tar -xzvf wine-ge-custom-8-25.tar.xz -C data/data/com.termux/files

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/wined3d.tar.xz
tar -xzvf wined3d.tar.xz -C data/data/com.termux/files

