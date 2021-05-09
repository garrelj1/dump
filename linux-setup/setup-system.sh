#!/bin/bash
# This linux setup is for Ubuntu 18.04 Bionic Beaver

HEAD="
!----- "
TAIL=" -----!
"

echo "$HEAD Installing zsh $TAIL"
sudo apt install zsh

echo "$HEAD Setting zsh to default, to enable it you must log out $TAIL"
sudo chsh -s $(which zsh)

echo "$HEAD Installing python2 $TAIL"
sudo apt install python

echo "$HEAD Installing git $TAIL"
sudo apt install git

git config --global user.email "garrellj101@gmail.com"
git config --global user.name "Jeremy Garrell"

echo "$HEAD Installing VIM and dependencies $TAIL"
# Add Vundle for vim setup
[ -d ~/.vim/bundle/Vundle.vim ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Add color packs
[ -d ~/.vim/color-schemes ] || git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/color-schemes
cd ~/.vim/color-schemes
cp -r colors ..

sudo apt install vim

echo "$HEAD Installing my custom dot files $TAIL"
[ -d ~/dotfiles/jeremy ] || git clone https://github.com/garrelj1/dump.git ~/dotfiles/jeremy
[ -d ~/dotfiles/jeremy ] && cd ~/dotfiles/jeremy; git pull

echo "$HEAD Updating .vimrc $TAIL"
cp ~/dotfiles/jeremy/.vimrc ~/

echo "$HEAD Appending .profile $TAIL"
