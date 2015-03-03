#!/bin/bash
set -e

# Enable selection in quick look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable ctrl-⌘-D keyboard shortcut
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

killall Finder
