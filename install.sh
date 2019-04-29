#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/vimrc ~/.vimrc
if [ ! -d ~/.vim ]; then
  ln -s ${BASEDIR}/vim ~/.vim
fi
ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
