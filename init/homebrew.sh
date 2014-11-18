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
brew install node
brew install subversion

# Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Apps
brew cask install --appdir=/Applications alfred
brew cask install --appdir=/Applications clipmenu
brew cask install --appdir=/Applications cord
brew cask install --appdir=/Applications firefox
brew cask install --appdir=/Applications firefoxdeveloperedition
brew cask install --appdir=/Applications gimp
brew cask install --appdir=/Applications google-chrome
brew cask install --appdir=/Applications google-chrome-canary
brew cask install --appdir=/Applications google-drive
brew cask install --appdir=/Applications imageoptim
brew cask install --appdir=/Applications iterm2
brew cask install --appdir=/Applications java
brew cask install --appdir=/Applications keepassx
brew cask install --appdir=/Applications libreoffice
brew cask install --appdir=/Applications optimal-layout
brew cask install --appdir=/Applications phpstorm
brew cask install --appdir=/Applications radiant-player
brew cask install --appdir=/Applications sequel-pro
brew cask install --appdir=/Applications slack
brew cask install --appdir=/Applications sourcetree
brew cask install --appdir=/Applications sublime-text3
brew cask install --appdir=/Applications time-tracker
brew cask install --appdir=/Applications todoist
brew cask install --appdir=/Applications vagrant
brew cask install --appdir=/Applications vagrant-manager
brew cask install --appdir=/Applications validator-sac
brew cask install --appdir=/Applications virtualbox
brew cask install --appdir=/Applications vlc
brew cask install --appdir=/Applications xtrafinder

# Tunnelblick must be installed directly in /Applications and will request to be moved at launch
brew cask install tunnelblick

# Quick look plugins
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-json

brew cleanup
