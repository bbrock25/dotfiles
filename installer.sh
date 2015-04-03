#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

## vim
rm ~/.vimrc
rm ~/.vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc
ln -s ${BASEDIR}/.vim/ ~/.vim

rm ~/.zshrc
## zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc

rm ~/.gitconfig
## git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
