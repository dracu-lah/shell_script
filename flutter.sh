#!/bin/bash

# Define some variables
FLUTTER_VERSION="3.7.5"
FLUTTER_URL="https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
FLUTTER_DIR="${HOME}/flutter"

# Install required packages
sudo apt-get update
sudo apt-get install -y git curl unzip xz-utils libglu1-mesa

# Download and extract Flutter
mkdir -p ${FLUTTER_DIR}
curl ${FLUTTER_URL} --progress-bar --location --remote-name
tar xf ${FLUTTER_URL##*/} -C ${FLUTTER_DIR}
rm -f ${FLUTTER_URL##*/}

# Add Flutter to PATH
echo 'export PATH="${PATH}:${HOME}/flutter/bin"' >> ${HOME}/.bashrc
source ${HOME}/.bashrc

# Run Flutter doctor
flutter doctor

