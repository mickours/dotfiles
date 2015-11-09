#!/bin/bash
################
# Installation script for my config made for archlinux
#
# Author: Michael Mercier <mickours@gmail.com>

###############
# install dependencies
sudo pacman -S --noconfirm --needed zsh grml-zsh-config tmux gvim ctags ranger

###############
# install config files in $HOME

# get scipt local directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# go home...
cd

# make links at home
DOTFILES="tmux.conf vimrc zshrc.local ctags"

for files in $DOTFILES
do
  rm ".$files" 2> /dev/null || true
  ln -sv "$DIR/$files" ".$files"
done

###############
# install config directories in ~/.config

# import configs
CONFIG_DIR="zsh"

for conf_dir in $CONFIG_DIR
do
  rm -r ".config/$conf_dir" 2> /dev/null || true
  ln -sv "$DIR/config/$conf_dir" ".config/"
done