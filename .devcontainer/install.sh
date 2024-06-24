#!/bin/bash

# Update and install necessary packages
apt-get update
apt-get install -y sudo jq curl git tar xz-utils libarchive-tools \
  openjdk-17-jdk

# Install ZeroTier
curl -s https://install.zerotier.com | bash

# Create vscode user with sudo privileges
useradd -m -s /bin/bash -G sudo vscode
echo "vscode  ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/vscode

# Function to download Flutter
function download_flutter {
  if [[ -f '/tmp/flutter.tar.xz' ]]; then
    echo 'Flutter is already downloaded.'
    return
  fi

  infra_channel='stable'
  infra='https://storage.googleapis.com/flutter_infra_release/releases'
  infra_json="$(curl -s "${infra}/releases_linux.json")"
  infra_hash="$(echo ${infra_json} | \
    jq -r ".current_release.${infra_channel}")"
  infra_release="$(echo ${infra_json} | \
    jq -r ".releases[] | select(.hash == \"${infra_hash}\")")"

  flutter_version="$(echo ${infra_release} | jq -r '.version')"
  dart_version="$(echo ${infra_release} | jq -r '.dart_sdk_version')"
  flutter_archive="${infra}/$(echo ${infra_release} | jq -r '.archive')"

  echo 'Downloading Flutter...'
  echo "Flutter Channel  : ${infra_channel}"
  echo "Flutter Version  : ${flutter_version}"
  echo "Dart Version     : ${dart_version}"
  curl "${flutter_archive}" -o '/tmp/flutter.tar.xz'
}

# Function to extract Flutter
function extract_flutter {
  echo 'Extracting Flutter...'
  mkdir -p '/opt'
  tar -xf '/tmp/flutter.tar.xz' -C '/opt'
  echo 'Change ownership of Flutter folder...'
  chown -R 'vscode:vscode' '/opt/flutter'
}

# Function to download Android Command Line Tools
function download_android_cmd {
  if [[ -f '/tmp/cmdline.zip' ]]; then
    echo 'Android Command Line Tools is already downloaded.'
    return
  fi

  cmdline_archive="$(curl -s 'https://developer.android.com/studio' | \
    grep 'https' | grep 'commandlinetools-linux' | \
    sed -E 's/^\s+href=\"(.+)\"\s*$/\1/')"
  
  echo 'Downloading Android Command Line Tools...'
  curl "${cmdline_archive}" -o '/tmp/cmdline.zip'
}

# Function to extract Android Command Line Tools
function extract_android_cmd {
  echo 'Extracting Android Command Line Tools...'
  mkdir -p '/opt/android/sdk/cmdline-tools/latest'
  bsdtar -xf '/tmp/cmdline.zip' -s '|[^/]*/||' \
    -C '/opt/android/sdk/cmdline-tools/latest'
  echo 'Change ownership of Android SDK folder...'
  chown -R 'vscode:vscode' '/opt/android'
}

# Function to download Android NDK
function download_ndk {
  if [[ -f '/tmp/android-ndk-r26c-linux.zip' ]]; then
    echo 'Android NDK is already downloaded.'
    return
  fi

  ndk_archive='https://dl.google.com/android/repository/android-ndk-r26c-linux.zip'
  
  echo 'Downloading Android NDK...'
  curl "${ndk_archive}" -o '/tmp/android-ndk-r26c-linux.zip'
}

# Function to extract Android NDK
function extract_ndk {
  echo 'Extracting Android NDK...'
  mkdir -p '/opt/android/ndk/r26c'
  bsdtar -xf '/tmp/android-ndk-r26c-linux.zip' --strip-components=1 \
    -C '/opt/android/ndk/r26c'
  echo 'Change ownership of Android NDK folder...'
  chown -R 'vscode:vscode' '/opt/android'
}

# Function to clear temporary files
function clear_temp {
  rm '/tmp/flutter.tar.xz' 
  rm '/tmp/cmdline.zip' 
  rm '/tmp/android-ndk-r26c-linux.zip' 
}

#instal utilities
function install_utilities {
  echo "Installing utilities..."
  sudo apt-get update
  sudo apt-get install -y build-essential libgtk-3-dev ffmpeg libavcodec-dev cmake \
    ninja-build libavformat-dev libavutil-dev libswscale-dev \
    libgflags-dev libjpeg-dev libpng-dev libtiff-dev

  # Check if python3 is installed, if not, install it
  if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Installing Python3..."
    sudo apt-get install -y python3 python3-pip
  else
    echo "Python3 is already installed."
  fi

  # Install Conan
  python3 -m pip install conan
}

#install fvm curl -fsSL https://fvm.app/install.sh | bash
function install_fvm {
  echo "Installing FVM..."
  curl -fsSL https://fvm.app/install.sh | bash
}

download_flutter
extract_flutter

download_android_cmd
extract_android_cmd

download_ndk
extract_ndk
install_utilities
install_fvm

clear_temp
