#!/bin/bash
############################
# Create symbolic links to vim dot file
############################
git submodule init
git submodule update
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vim ~/.vim

