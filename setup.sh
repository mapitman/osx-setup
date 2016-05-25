#!/bin/sh

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

if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
  echo "\033[0;33mFound ~/.vimrc.\033[0m \033[0;32mBacking up to ~/vimrc.old\033[0m";
  mv ~/.vimrc ~/vimrc.old;
fi
curl -Lo ~/.vimrc https://raw.githubusercontent.com/mapitman/linux-setup/master/vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -Lo ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
mkdir -p ~/.vim/colors && \
curl -Lo ~/.vim/colors/atom-dark-256.vim https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/vim-jade
git clone https://github.com/mustache/vim-mustache-handlebars.git ~/.vim/bundle/vim-mustache-handlebars
echo export EDITOR=\"vim\" >> ~/.zshrc
echo export VISUAL=\"\$EDITOR\" >> ~/.zshrc

