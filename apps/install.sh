#!/bin/bash

echo "Install ZSH shell"

dnf install zsh

echo "Install Oh my ZSH tooling for ZSH shell"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install .asdf version manager"

dnf install \
  automake autoconf readline-devel \
  ncurses-devel openssl-devel libyaml-devel \
  libxslt-devel libffi-devel libtool unixODBC-devel

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.3

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo "Apply long file watches"

sysctl fs.inotify.max_user_watches=524288
sysctl -p --system
