#!/usr/bin/env sh

sh ~/.vim_runtime/install_awesome_vimrc.sh
cp ~/.vim_runtime/jaebaek.vimrc ~/.vimrc

if [[ $1 == 'all' ]]; then
    ## if you want to re-install chrome code search, run the following
    cd ~/.vim_runtime/sources_non_forked/
    rm -rf vim-codesearch/
    git clone https://github.com/chromium/vim-codesearch.git
    cd vim-codesearch/
    git submodule update --init --recursive
fi
