#!/bin/bash
# ====================================================
# Install the contents of the linux-config repo.
# ====================================================

cd ~
cp linux-config/.bash_aliases .
cp linux-config/_vimrc ./.vimrc

mkdir vimfiles
cp linux-config/bundle ./vimfiles
cp linux-config/Ultisnips ./vimfiles
