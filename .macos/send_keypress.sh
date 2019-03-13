#!/bin/sh

# https://apple.stackexchange.com/questions/230801/unlocking-and-locking-mac-screen-via-ssh
# https://eastmanreference.com/complete-list-of-applescript-key-codes
# taps the fn key every so often
osascript -e 'tell application "System Events" to key code 63'
echo "last pressed key at $(date)" >> ~/.dotfiles/.macos/.keypresser

