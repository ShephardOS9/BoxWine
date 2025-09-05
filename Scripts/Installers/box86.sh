#!/bin/bash
clear
echo "Installing emulator, and scripts for emulator..."
sleep 3

wget https://github.com/ShephardOS9/BoxWine/raw/main/scripts.zip -O $PREFIX/scripts.zip
unzip -o $PREFIX/scripts.zip -d $PREFIX

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/box86-box64-binaries.tar.xz
tar -xvf box86-box64-binaries.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/dxvk.tar.xz
tar -xvf dxvk.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc-prefix.tar.xz
tar -xvf glibc-prefix.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/glibc_package_manager.tar.gz
tar -xvzf glibc_package_manager.tar.gz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/turnip.tar.xz
tar -xvf turnip.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/virgl-mesa.tar.xz
tar -xvf virgl-mesa.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/wine-ge-custom-8-25.tar.xz
tar -xvf wine-ge-custom-8-25.tar.xz -C "$HOME"

wget -q --show-progress https://github.com/ShephardOS9/BoxWine/releases/download/Box86/wined3d.tar.xz
tar -xvf wined3d.tar.xz -C "$HOME"

