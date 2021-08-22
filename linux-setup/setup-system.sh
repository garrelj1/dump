#!/bin/bash
# This linux setup is for Ubuntu 20.04 Focal Fossa

HEAD="
!----- "
TAIL=" -----!
"

echo "$HEAD Creating workspace $TAIL"
mkdir ~/workspace

echo "$HEAD Installing curl $TAIL"
sudo apt install curl

echo "$HEAD Installing zsh $TAIL"
sudo apt install zsh

echo "$HEAD Setting zsh to default, to enable it you must log out $TAIL"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git config --global user.email "garrellj101@gmail.com"
git config --global user.name "Jeremy Garrell"

echo "$HEAD Installing VIM and dependencies $TAIL"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

echo "$HEAD Installing python2 $TAIL"
sudo apt install python

echo "$HEAD Installing Node JS $TAIL"
sudo snap install node --classic

echo "$HEAD Installing VS Code $TAIL"
sudo snap install --classic code
