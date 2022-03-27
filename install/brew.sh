#!/bin/sh

if test ! $(which brew); then
  installing 'Homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  information 'Adding Homebrew to your PATH'
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

function install_or_upgrade {
  if brew ls --versions "$1" > /dev/null; then
    echo "Upgrading $1"
    brew upgrade "$1"
  else
    echo "Installing $1"
    brew install "$1"
  fi
}

installing "Homebrew packages"

# cli tools
install_or_upgrade wget
install_or_upgrade htop

# python
install_or_upgrade python
install_or_upgrade python3

# development tools
install_or_upgrade vim # up-to-date vim
install_or_upgrade cmake # used for YCM in vim
install_or_upgrade fzf # used for fuzzy finding
install_or_upgrade gnupg

# git
install_or_upgrade git
install_or_upgrade git-cola

# cli tools for development
install_or_upgrade golang
install_or_upgrade awscli
install_or_upgrade aws-cdk
install_or_upgrade azure-cli
install_or_upgrade terraform
install_or_upgrade dotnet

# terminal
install_or_upgrade zsh
install_or_upgrade iterm2

# chat apps
install_or_upgrade discord
install_or_upgrade slack

# spotify
install_or_upgrade spotify
