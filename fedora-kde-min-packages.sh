#!/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

# RPM Fusion & Others:
  echo "RPM Fusion..."
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update
sudo dnf update

# Install KDE Packages
dnf install \
  @"base-x" \
  @"Common NetworkManager Submodules" \
  @"Fonts" \
  @"Hardware Support" \
  @"Printing Support" \
  @"Input Methods" \
  bluedevil \
  bluez \
  breeze-gtk \
  breeze-icon-theme \
  cagibi \
  colord-kde \
  cups \
  cups-pk-helper \
  dolphin \
  evince \
  firewall-config \
  glibc-all-langpacks \
  gnome-keyring-pam \
  gnome-disk-utility \
  gwenview \
  kate \
  kcalc \
  kcm_systemd \
  kde-gtk-config \
  kde-partitionmanager \
  kde-print-manager \
  kde-settings-pulseaudio \
  kde-style-breeze \
  kdegraphics-thumbnailers \
  kdeplasma-addons \
  kdialog \
  kdnssd \
  kf5-akonadi-server \
  kf5-akonadi-server-mysql \
  kf5-baloo-file \
  kf5-kipi-plugins \
  khotkeys \
  kmenuedit \
  konsole5 \
  kscreen \
  kscreenlocker \
  ksshaskpass \
  ksysguard \
  kwalletmanager5 \
  kwebkitpart \
  kwin \
  kfind \
  NetworkManager-config-connectivity-fedora \
  pam-kwallet \
  phonon-qt5-backend-gstreamer \
  pinentry-qt \
  plasma-breeze \
  plasma-desktop \
  plasma-desktop-doc \
  plasma-drkonqi \
  plasma-nm \
  plasma-nm-l2tp \
  plasma-nm-openconnect \
  plasma-nm-openswan \
  plasma-nm-openvpn \
  plasma-nm-pptp \
  plasma-nm-vpnc \
  plasma-pa \
  plasma-user-manager \
  plasma-workspace \
  plasma-workspace-geolocation \
  polkit-kde \
  qt5-qtbase-gui \
  qt5-qtdeclarative \
  spectacle \
  sddm \
  sddm-breeze \
  sddm-kcm \
  setroubleshoot \
  sni-qt \
  xorg-x11-drv-libinput \
  firefox \
  libreoffice \
  obs-studio \
  alacritty \
  neofetch \
  htop \
  timeshift \
  zsh \
  exa \
  zstd \
  gwenview \
  ark \
  zip \
  unzip \
  xdg-user-dirs \
  xdg-utils \
  vlc \
  ffmpeg \
  ffmpegthumbs \
  ranger \
  kvantum \
  hplip \
  qbittorrent \



##SDDM:
  echo "Enableing SDDM"
sudo systemctl enable sddm
sudo systemctl set-default graphical.target

##Boot Splash Screen
 echo "Boot Splash Screen"
sudo plymouth-set-default-theme -R bgrt
