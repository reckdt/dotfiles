#!/bin/sh

echo "Setting up..."

[ -d "$HOME/bin" ] || mkdir -p "$HOME/bin"

chmod +x $PWD/scripts/*
ln -sf $PWD/scripts/* $HOME/bin
ln -sf $PWD/vimrc $HOME/.vimrc

echo "Complete."
