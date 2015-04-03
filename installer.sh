#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

## vim
rm ~/.vimrc
rm ~/.vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim/ ~/.vim

rm ~/.zshrc
rm ~/.oh-my-zsh
## zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/oh-my-zsh ~/.oh-my-zsh

rm ~/.gitconfig
## git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
