#!/usr/bin/env bash

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# Simple window scale effect
defaults write com.apple.dock mineffect -string scale;

# Zero timeout to show hidden Dock
defaults write com.apple.dock autohide-delay -float 0;

# Fast Dock showing animation (300ms)
defaults write com.apple.dock autohide-time-modifier -float 0.3;

# Set default folder for screenshots
mkdir ~/Screenshots;
defaults write com.apple.screencapture location ~/Screenshots;

# Restart services
killall Dock;
killall SystemUIServer;