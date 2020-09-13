#!/bin/bash

# ------------------------------------
# Install updates:
# ------------------------------------
sudo apt update && sudo apt dist-upgrade -y

# ------------------------------------
# Install dev tools and qol packages:
# ------------------------------------

sudo apt install -y \
gnome-tweak-tool \
gnome-shell-extensions \
chromium-browser \
openjdk-8-jdk-headless \
code \
build-essential \
curl \
make \
tlp \
powertop \
python3-minimal \
python3-pip \

# ------------------------------------
# Install flatpak packages:
# ------------------------------------
flatpak install flathub com.sublimetext.three
flatpak install flathub org.videolan.VLC
flatpak install flathub com.spotify.Client

# ------------------------------------
# Install Notion for Linux:
# ------------------------------------
curl -LJO https://github.com/davidbailey00/notion-deb-builder/releases/download/v2.0.7x/notion-desktop_2.0.8-win_amd64.deb
sudo dpkg -i notion-desktop_2.0.8-win_amd64.deb

# ------------------------------------
# Install PlatformIO for VSCode:
# ------------------------------------
curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py -o get-platformio.py
python3 get-platformio.py
