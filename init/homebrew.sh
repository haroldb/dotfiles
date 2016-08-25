#!/bin/bash
set -e

#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Command line tools
brew install ack
brew install ant
brew install bash-completion
brew install colordiff
brew install git
brew install git-flow=avh
brew install gtar
brew install node
brew install subversion
brew install the_silver_searcher
brew install zsh

# PHP
brew tap homebrew/php

brew install php56
brew install php70
brew install brew-php-switcher
brew install composer
brew install psysh
brew install php-code-sniffer
brew install php56-xdebug

# Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Apps
brew cask install alfred
brew cask install cord
brew cask install cyberduck
brew cask install docker
brew cask install evernote
brew cask install firefox
brew cask install firefoxdeveloperedition
brew cask install gimp
brew cask install gitkraken
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install google-drive
brew cask install imageoptim
brew cask install iterm2
brew cask install java
brew cask install keepassx
brew cask install kitematic
brew cask install libreoffice
brew cask install macpass
brew cask install optimal-layout
brew cask install owasp-zap
brew cask install radiant-player
brew cask install sequel-pro
brew cask install skitch
brew cask install slack
brew cask install sourcetree
brew cask install sublime-text
brew cask install time-tracker
brew cask install tunnelblick
brew cask install vagrant
brew cask install vagrant-manager
brew cask install validator-sac
brew cask install virtualbox
brew cask install vlc
brew cask install xtrafinder

# Fonts
brew tap caskroom/fonts

brew cask install font-source-code-pro

# Quick look plugins
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-json

brew cleanup
