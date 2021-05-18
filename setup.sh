#!/bin/bash

echo "Setting up..."

[ -d "$HOME/bin" ] || mkdir -p "$HOME/bin"

chmod +x $PWD/scripts/*
ln -sf $PWD/scripts/* $HOME/bin
ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/aliases $HOME/.aliases
ln -sf $PWD/tmux.conf $HOME/.tmux.conf

if [ "$(uname)" == "Darwin" ]; then
  ln -sf $PWD/zshrc $HOME/.zshrc
  ln -sf $PWD/macos $HOME/.macos
else
  ln -sf $PWD/bashrc $HOME/.bashrc
fi

echo "Complete."
