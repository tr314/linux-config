#!/bin/bash
# ====================================================
# Install the contents of the linux-config repo.
# ====================================================

cd ~
echo "Installing bash aliases."
cp linux-config/.bash_aliases .

echo "Installing vimrc."
cp linux-config/.vimrc ./.vimrc

echo "Installing vim plugins."
mkdir .vim
cp -rf linux-config/UltiSnips ./.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installation complete."
