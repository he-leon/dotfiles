#!/bin/bash
# This script links the dotfiles to the according files in this git repo
# zsh
ln -sf $PWD/zsh/zshrc $HOME/.zshrc
ln -sf $PWD/zsh/zshrc_base $HOME/.zshrc_base
ln -sf $PWD/zsh/custom_functions.sh $HOME/.custom_functions.sh
# nvim
ln -sf $PWD/nvim -t $HOME/.config/
# X
ln -sf $PWD/X/Xresources $HOME/.Xresources
ln -sf $PWD/X/Xmodmap $HOME/.Xmodmap
# xfce
ln -sf $PWD/xfce/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
# byobu
ln -sf $PWD/byobu/*.tmux -t $HOME/.byobu/
# Config shortcut
ln -sf $PWD/nvim_conf.sh $HOME/.local/bin/nvim_conf
