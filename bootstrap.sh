#!/usr/bin/env bash


#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by cryptopool.builders for crypto use...
# This script is intended to be run like this:
#
#   curl https://raw.githubusercontent.com/cryptopool-builders/Multi-Pool-Installer/master/bootstrap.sh | bash
#
#########################################################


# Clone the MultiPool repository if it doesn't exist.

echo Installing git . . .
apt-get -q -q update
apt-get -q -q install -y git < /dev/null
echo

echo Downloading MultiPool Installer v1.0. . .
git clone https://github.com/lucasribeirop/multipool_setup "$HOME"/multipool install < /dev/null 2> /dev/null
echo


# Start setup script.
bash $HOME/multipool/install/start.sh
