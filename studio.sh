#!/bin/bash

# Add the PPA for Java 8
sudo add-apt-repository ppa:openjdk-r/ppa -y

# Update the package manager
sudo apt-get update

# Install Java 8
sudo apt-get install openjdk-8-jre -y
sudo apt-get install openjdk-8-jdk -y
# Install Android Studio dependencies
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

# Download Android Studio
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2022.1.1.21/android-studio-2022.1.1.21-linux.tar.gz

# Extract the downloaded file
tar -xvzf android-studio-2022.1.1.21-linux.tar.gz

# Move Android Studio to /opt
sudo mv android-studio /opt/

# Add Android Studio to PATH
echo 'export PATH=$PATH:/opt/android-studio/bin' >> ~/.bashrc

# Reload .bashrc
source ~/.bashrc

# Launch Android Studio
studio.sh
