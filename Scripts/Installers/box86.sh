#!/bin/bash
clear
echo "Installing emulator and scripts..."
sleep 2

# Install scripts
wget -q --show-progress \
https://github.com/ShephardOS9/BoxWine/raw/main/scripts.zip \
-O $PREFIX/scripts.zip

unzip -o $PREFIX/scripts.zip -d $PREFIX
rm $PREFIX/scripts.zip

# Function for downloading + extracting
download_extract() {
    url="$1"
    file="$(basename "$url")"

    wget -q --show-progress "$url"
    tar -xvf "$file" -C $PREFIX
    rm "$file"
}

BASE_URL="https://github.com/ShephardOS9/BoxWine/releases/download/Box86"

download_extract "$BASE_URL/box86-box64-binaries.tar.xz"
download_extract "$BASE_URL/dxvk.tar.xz"
download_extract "$BASE_URL/glibc-prefix.tar.xz"
download_extract "$BASE_URL/glibc_package_manager.tar.gz"
download_extract "$BASE_URL/turnip.tar.xz"
download_extract "$BASE_URL/virgl-mesa.tar.xz"
download_extract "$BASE_URL/wine-ge-custom-8-25.tar.xz"
download_extract "$BASE_URL/wined3d.tar.xz"

echo "✅ Installation complete!"