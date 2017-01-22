#!/bin/bash
# Simple setup.sh for configuring Ubuntu based workstation

# update pkgs
sudo apt-get update

# main apps
sudo apt-get install -y vim vim-nox ctags xournal meld rdesktop

# system utilities
sudo apt-get install -y screen sshfs autofs curl git subversion sqlite3

# build utilities
sudo apt-get install -y build-essential automake autoconf cmake


# ros install steps

# 1.2 sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list'

# 1.3 keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# 1.4 installation
sudo apt-get update
# Desktop-Full Install: (Recommended) :
#
# ROS, rqt, rviz, robot-generic libraries,
# 2D/3D simulators, navigation and 2D/3D perception
sudo apt-get install -y ros-kinetic-desktop-full

# ALTERNATIVELY:

# Desktop Install:
#
# ROS, rqt, rviz, and robot-generic libraries
#sudo apt-get install -y ros-kinetic-desktop

# ROS-Base:
#
# (Bare Bones) ROS package, build, and communication libraries.
# No GUI tools.
#sudo apt-get install -y ros-kinetic-ros-base

# Individual Package:
#
# You can also install a specific ROS package
#(replace underscores with dashes of the package name):
#sudo apt-get install ros-kinetic-PACKAGE
# e.g. sudo apt-get install -y ros-kinetic-slam-gmapping

# To find available packages, use:
#apt-cache search ros-kinetic

# 1.5 Init rosdep
sudo rosdep init
rosdep update

# 1.6 ENV setup
echo ". /opt/ros/kinetic/setup.bash" >> ~/.bashrc
. ~/.bashrc

# 1.7 Getting rosinstall
sudo apt-get install -y python-rosinstall

# Extra steps learned from youtube
sudo apt-get install -y python-catkin-tools

# git clone and install dotfiles as well
./install_dotfiles.sh
