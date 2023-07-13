#!/bin/bash
# This linux setup is for Ubuntu 20.04 Focal Fossa

HEAD="
!----- "
TAIL=" -----!
"

# Before running this you need to setup an ssh key and add it to github
# ssh-keygen -t ed25519 -C "your_email@example.com"

echo "$HEAD Creating workspace $TAIL"
mkdir ~/workspace

echo "$HEAD Installing packages $TAIL"
sudo apt install build-essential dkms

echo "$HEAD Installing curl and wget $TAIL"
sudo apt install curl wget

echo "$HEAD Installing git$TAIL"
sudo apt install git

echo "$HEAD Setting oh-my-bash to default, to enable it you must log out $TAIL"
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

git config --global user.email "garrellj101@gmail.com"
git config --global user.name "Jeremy Garrell"

echo "$HEAD Installing VIM and dependencies $TAIL"
mkdir ~/.vim/autoload -p
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv plug.vim ~/.vim/autoload

sudo apt install vim
sudo apt install vim-gtk3

echo "$HEAD Installing my custom dot files $TAIL"
[ -d ~/.dotfiles] || git clone https://github.com/garrelj1/dump.git ~/.dotfiles

echo "$HEAD Updating .vimrc $TAIL"
cp ~/.dotfiles/linux-setup/.vimrc ~/

echo "$HEAD Appending .profile $TAIL"
cat ~/.dotfiles/linux-setup/.profile >> ~/.profile

echo "$HEAD Appending .bashrc $TAIL"
cat ~/.dotfiles/linux-setup/.bashrc >> ~/.bashrc

echo "$HEAD Installing other packages"
sudo apt install gthumb

echo "$HEAD Installing python2 $TAIL"
sudo apt install python

echo "$HEAD Installing Node JS $TAIL"
sudo snap install node --classic

echo "$HEAD Installing VS Code $TAIL"
sudo snap install --classic code

echo "$HEAD Installing VS Code $TAIL"
sudo snap install --classic android-studio
