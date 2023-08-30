#!/bin/sh

current_dir=`pwd`
echo $current_dir
ln -s $current_dir/.vimrc $HOME/.vimrc
ln -s $current_dir/.gvimrc $HOME/.gvimrc
ln -s $current_dir/ $HOME/.vim
ln -s $current_dir/ $HOME/.config/nvim

git clone https://github.com/Shougo/dein.vim "$HOME"/.dein/repos/github.com/Shougo/dein.vim
curl -fsSL https://deno.land/x/install/install.sh | sh
