#!/bin/bash

# Download Starship
# sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Download autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.config/zsh/zsh-autosuggestions

# System-Specific Installs
# if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
# else
    # Linux
# fi

# link emacs dir
ln -s $HOME/.config/.emacs.d $HOME/.emacs.d

# install vim packages
mkdir -p $HOME/.vim/pack
# vim-fugitive
# https://github.com/tpope/vim-fugitive
mkdir -p $HOME/.vim/pack/tpope/start/vim-fugitive
git clone https://tpope.io/vim/fugitive.git $HOME/.vim/pack/tpope/start/vim-fugitive
vim -u NONE -c "helptags fugitive/doc" -c q
