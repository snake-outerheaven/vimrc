#!/bin/bash

sudo apt update

sudo apt install vim vim-addon-manager vim-youcompleteme vim-airline \
                    vim-airline-themes vim-fugitive fonts-powerline

vim-addons install youcompleteme airline fugitive

ln -sf ~/.vim/vimrc ~/.vimrc

