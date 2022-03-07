#!/bin/bash

installing "oh-my-zsh"

item_start "Installing"
if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &>/dev/null
    item_complete "done"
else
    item_complete "already exists"
fi

item_start "Linking"
if [ ! -f ~/.oh-my-zsh/themes/tyler.zsh-theme ]; then
    ln -s $PWD/targets/zsh/tyler.zsh-theme ~/.oh-my-zsh/themes/tyler.zsh-theme &>/dev/null
    item_complete "done"
else
    item_complete "already exists"
fi