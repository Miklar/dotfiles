#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install google-chrome
brew cask install iterm2
brew install neovim
brew install z
brew cask install docker

brew install nvm
mkdir ~/.nvm

# fonts for Gruvbox vim theme
brew tap homebrew/cask-fonts #You only need to do this once for cask-fonts
brew cask install font-fantasque-sans-mono
brew cask install font-fira-code

brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# The installation script should set zsh to your default shell, but if it doesn't you can do it manually:
# chsh -s $(which zsh)

brew cask install visual-studio-code
brew cask install bettertouchtool
brew cask install spectacle
brew cask install spotify
