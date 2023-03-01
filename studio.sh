#!/bin/bash

# Java 11
sudo apt install openjdk-11-jdk

# Install Android Studio dependencies
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Define variable
STUDIO_VERSION="android-studio-2022.1.1.21-linux.tar.gz"

# Download Android Studio
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.1.1.40/${STUDIO_VERSION}

# Extract the downloaded file
tar -xvzf ${STUDIO_VERSION}

# Move Android Studio to /opt
sudo mv android-studio /opt/

# Add Android Studio to PATH
echo 'export PATH=$PATH:/opt/android-studio/bin' >> ~/.bashrc

# Reload .bashrc
source ~/.bashrc

