mkdir -p $HOME/.config/nvim/pack

# vim-fugitive
# https://github.com/tpope/vim-fugitive
mkdir -p $HOME/.config/nvim/pack/tpope/start/vim-fugitive
git clone https://tpope.io/vim/fugitive.git $HOME/.config/nvim/pack/tpope/start/vim-fugitive
vim -u NONE -c "helptags fugitive/doc" -c q

# vim-unimpaired
mkdir -p $HOME/.config/nvim/pack/tpope/start/vim-unimpaired
git clone https://tpope.io/vim/unimpaired.git $HOME/.config/nvim/pack/tpope/start/vim-unimpaired
vim -u NONE -c "helptags unimpaired/doc" -c q

#vim-commentary
mkdir -p $HOME/.config/nvim/pack/tpope/start/vim-unimpaired
git clone https://tpope.io/vim/commentary.git $HOME/.config/nvim/pack/tpope/start/vim-commentary
vim -u NONE -c "helptags commentary/doc" -c q

# vim kitty navigator
# https://github.com/knubie/vim-kitty-navigator.git
mkdir -p $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator
git clone https://github.com/knubie/vim-kitty-navigator.git $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator
cp $HOME/.config/nvim/pack/vim-kitty-navigator/start/vim-kitty-navigator/*.py ~/.config/kitty/
