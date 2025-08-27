#!/bin/bash
# ====================================================
# Install the contents of the linux-config repo.
# ====================================================

cd ~
echo "Installing bash aliases."
cp linux-config/.bash_aliases .

echo "Installing vimrc."
cp linux-config/_vimrc ./.vimrc

echo "Installing vim plugins."
mkdir vimfiles
cp -r linux-config/bundle ./vimfiles
cp -r linux-config/Ultisnips ./vimfiles

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installation complete."
