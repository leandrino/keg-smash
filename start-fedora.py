#! /usr/bin/python3

import subprocess

# sudo dnf install pkg-config openssl-devel
# sudo dnf install cmake gcc-c++ make python3-devel
# sudo dnf -y install dnf-plugins-corei
# sudo dnf -y install python2-neovim python3-neovim 
# sudo dnf install @development-tools  
# sudo dnf install neovim

print('instaling NeoVim')
neovim = subprocess.run(['dnf', 'install', 'neovim'], stdout=subprocess.PIPE)
neovim.stdout

