<#
Install and configure Vim.
*>

cd ~

Write-Host "Installing _vimrc."
Copy-Item linux-config/.vimrc ./_vimrc -Force

Write-Host "Installing vim plugins."
mkdir .\vimfiles
Copy-Item linux-config\bundle ./vimfiles -Recurse -Force
Copy-Item linux-config\UltiSnips ./vimfiles -Recurse -Force

git clone https://github.com/VundleVim/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim

Write-Host "Installation complete."
