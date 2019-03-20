#!/bin/bash
set -euxo pipefail

# Sublime editor
echo "Installing sublime editor..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && \
apt-get install -y apt-transport-https && \
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list && \
apt-get update -y && \
apt-get install -y sublime-text

# Clean up
echo "Cleaning up..."
apt-get clean -y