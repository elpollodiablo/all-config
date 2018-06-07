#!/bin/bash

test "`which sudo`" || ( echo "You need sudo installed and working"; exit 1; )
git submodule init
git submodule update
for dir in tmux-config vim-config zsh-config; do
	pushd $dir;
	git checkout master;
	git pull;
	popd;
done
./tmux-config/setup_tmux.sh
./vim-config/setup_vim.sh
./zsh-config/setup_zsh.sh
