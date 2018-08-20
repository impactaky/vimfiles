#!/bin/sh

current_dir=`pwd`
echo $current_dir
ln -s $current_dir/.vimrc $HOME/.vimrc
ln -s $current_dir/.gvimrc $HOME/.gvimrc
ln -s $current_dir/ $HOME/.vim
ln -s $current_dir/ $HOME/.config/nvim
cp ./template.vimrc ./my_conf.vimrc

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $HOME/.dein
