#! /usr/bin/python3

import subprocess
import open

pythonDev = subprocess.run(['apt-get', 'install', 'python-dev', 'python-pip', 'python3-dev'], stdout=subprocess.PIPE)
spc = subprocess.run(['apt-get', 'install', 'software-properties-common'], stdout=subprocess.PIPE)
addNVRepo = subprocess.run(['add-apt', 'repository', 'ppa:neovim-ppa/stable'], stdout=subprocess.PIPE)
update = subprocess.run(['apt-get', 'update'], stdout=subprocess.PIPE)
upgrade = subprocess.run(['apt-get', 'upgrade'], stdout=subprocess.PIPE)
neovim = subprocess.run(['apt-get', 'install', 'neovim'], stdout=subprocess.PIPE)
customBuild = subprocess.run(['apt-get', 'install', 'automake', 'autoconf', 'libreadline-dev', 'libncurses-dev', 'libssl-dev', 'libyaml-dev', 'libxslt-dev', 'libffi-dev', 'libtool', 'unixodbc-dev'], stdout=subprocess.PIPE)
buildEssential = subprocess.run(['apt', 'install', 'build-essential'], stdout.subprocess.PIPE)

neovim.stdout

zshrcFile = open('~/.zshrc', 'w')
zshrcFile.write('. $HOME/.asdf/asdf.sh')
zshrcFile.write('. $HOME/.asdf/completions/asdf.bash')
