#!/usr/bin/env bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/miklar/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask google-chrome
brew install --cask iterm2
brew install neovim
brew install z
brew install --cask docker
brew install diff-so-fancy #pretty git diffs
brew install azure-cli

brew install --cask visual-studio-code
brew install --cask insomnia
brew install --cask bettertouchtool
brew install --cask spotify

brew install todo-txt
brew install bat

brew install nvm
mkdir ~/.nvm

# fonts for Gruvbox vim theme
brew tap homebrew/cask-fonts #You only need to do this once for cask-fonts
brew install --cask font-fantasque-sans-mono
brew install --cask font-fira-code
brew install --cask font-fira-code-nerd-font

brew install fish
fish
fish_add_path /opt/homebrew/bin
# set fish as default shell
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

#Oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
#Bass
omf install bass

#Omnisharp
curl --verbose --location --remote-name https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.0/omnisharp-osx-x64-net6.0.tar.gz
mkdir -p ~/.local/omnisharp
mv omnisharp-osx-x64-net6.0.tar.gz ~/.local/omnisharp
cd ~/.local/omnisharp
tar -xvf omnisharp-osx-x64-net6.0.tar.gz

#Packer (Neovim plugin manager)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

