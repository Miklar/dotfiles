#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew cask install google-chrome
brew cask install iterm2
brew install neovim

brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# The installation script should set zsh to your default shell, but if it doesn't you can do it manually:
# chsh -s $(which zsh)

brew cask install visual-studio-code
brew cask install bettertouchtool
