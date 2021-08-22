#!/bin/bash

HEAD="
!----- "
TAIL=" -----!
"

echo "$HEAD Installing software $TAIL"
sudo apt update
sudo apt install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

echo "$HEAD When prompted please configure java version 8 $TAIL"
sudo apt install openjdk-8-jdk
sudo update-alternatives --config java
sudo update-alternatives --config javac

echo "$HEAD Installing repo command $TAIL"
[ -d ~/bin ] || mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

