#!/bin/bash
set -e

# Enable selection in quick look
defaults write com.apple.finder QLEnableTextSelection -bool true

killall Finder
