#!/bin/sh

test "`which sudo`" || apt-get install sudo
./tmux-config/setup_tmux.sh
./vim-config/setup_vim.sh
./zsh-config/setup_zsh.sh
