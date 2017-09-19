#!/bin/bash
# Simple setup.sh for configuring Ubuntu based workstation

# main apps
sudo apt-get install -y vim vim-nox ctags xournal meld rdesktop
# math apps
sudo apt-get install -y octave wxmaxima maxima-share
# 2d graphics
sudo apt-get install -y gimp inkscape
# 3d graphics (commented due to big download)
#sudo apt-get install -y blender

# system utilities
sudo apt-get install -y screen sshfs autofs curl git subversion sqlite3

# build utilities
sudo apt-get install -y build-essential g++ automake autoconf cmake

# python stuff
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod u+x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

# pull down dotfiles from github
./install_dotfiles.sh

echo "export PATH=/home/osboxes/miniconda3/bin:$PATH" >> ~/.bashrc_custom
