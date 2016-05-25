#!/bin/sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install vim --with-lua
brew install curl
brew install mercurial
brew install ssh-copy-id
brew install imagemagick
brew install pass
brew install htop
brew install pwgen
brew install gpg-agent

open https://www.docker.com/products/docker-toolbox

## Setup vim
. ./vim-setup.sh

