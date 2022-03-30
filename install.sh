#!/bin/bash

# Download Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Download autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/config/zsh/zsh-autosuggestions

# System-Specific Installs
if [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
else
    # Linux
fi


