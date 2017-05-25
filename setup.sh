#!/bin/sh

test "`which sudo`" || ( echo "You need sudo installed and working"; exit 1; )

./tmux-config/setup_tmux.sh
./vim-config/setup_vim.sh
./zsh-config/setup_zsh.sh
