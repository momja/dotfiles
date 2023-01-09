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
mkdir -p $HOME/.config/nvim/pack

# vim-fugitive
# https://github.com/tpope/vim-fugitive
mkdir -p $HOME/.config/nvim/pack/tpope/start/vim-fugitive
git clone https://tpope.io/vim/fugitive.git $HOME/.config/nvim/pack/tpope/start/vim-fugitive
vim -u NONE -c "helptags fugitive/doc" -c q

# set up vim kitty navigator
# https://github.com/knubie/vim-kitty-navigator.git
mkdir -p $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator
git clone https://github.com/knubie/vim-kitty-navigator.git $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator
cp $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator/*.py ~/.config/kitty/


