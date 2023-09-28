#!/bin/bash

source=$HOME
nvimsource=/usr/local/bin/nvim.appimage
zshsource=/usr/bin/zsh

echo "Checking nvim"
if [ -z $nvimsource ]
then
	sudo apt-get install neovim
else
	echo "nvim already installed"
fi

echo "CheckingZSH"
if [ -z $zshsource ]
then
	sudo apt-get install zsh
else
	echo "zsh already installed"
fi
cp -r configFile $source/.config
unzip ohmyzsh.zip ohmyzsh
cp -r ohmyzsh $source/.oh-my-zsh
cp zshrcFile $source/.zshrc
