#!/bin/bash

# get scipt local directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# go home...
cd

DOTFILES="tmux.conf vimrc zshrc.local ctags"

for files in $DOTFILES
do
  rm ".$files" 2> /dev/null || true
  ln -sv "$DIR/$files" ".$files"
done
