#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install --cask google-chrome
brew install --cask iterm2
brew install neovim
brew install z
brew install --cask docker
brew install diff-so-fancy #pretty git diffs

brew install --cask visual-studio-code
brew install --cask insomnia
brew install --cask bettertouchtool
brew install --cask spotify

brew install nvm
mkdir ~/.nvm

# fonts for Gruvbox vim theme
brew tap homebrew/cask-fonts #You only need to do this once for cask-fonts
brew install --cask font-fantasque-sans-mono
brew install --cask font-fira-code

brew install fish
# set fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

#Omnisharp
curl --verbose --location --remote-name https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.0/omnisharp-osx-x64-net6.0.tar.gz
mkdir -p ~/.local/omnisharp
mv omnisharp-osx-x64-net6.0.tar.gz ~/.local/omnisharp
cd ~/.local/omnisharp
tar -xvf omnisharp-osx-x64-net6.0.tar.gz

#Packer (Neovim plugin manager)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

