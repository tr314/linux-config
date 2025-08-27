#!/bin/bash
# ====================================================
# Install the contents of the linux-config repo.
# ====================================================

cd ~
cp linux-config/.bash_aliases .
cp linux-config/_vimrc ./.vimrc

mkdir vimfiles
cp -r linux-config/bundle ./vimfiles
cp -r linux-config/Ultisnips ./vimfiles

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
