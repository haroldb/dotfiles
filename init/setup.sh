#!/bin/bash
set -e

# Enable selection in quick look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable ctrl-⌘-D keyboard shortcut
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

# Disable bouncing dock icons
defaults write com.apple.dock no-bouncing -bool true

killall Finder
