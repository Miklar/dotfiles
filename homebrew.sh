#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install --cask google-chrome
brew install --cask iterm2
brew install neovim
brew install z
brew install --cask docker
brew install diff-so-fancy #pretty git diffs

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

#brew install zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# The installation script should set zsh to your default shell, but if it doesn't you can do it manually:
# chsh -s $(which zsh)

brew install --cask visual-studio-code
brew install --cask insomnia
brew install --cask bettertouchtool
brew install --cask spotify
