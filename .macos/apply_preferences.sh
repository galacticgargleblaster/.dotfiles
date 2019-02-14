#!/bin/sh

# https://apple.stackexchange.com/questions/141069/updating-modifier-keys-from-the-command-line-takes-no-effect
# this maps caps lock to escape globally
defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-591-0 -array \
'<dict>
	<key>HIDKeyboardModifierMappingDst</key>
	<real>30064771113</real>
	<key>HIDKeyboardModifierMappingSrc</key>
	<real>30064771129</real>
</dict>'


# These key repeat settings unfortunately don't take effect until logging out and logging back in.  Where are these settings persisted?

defaults write com.apple.universalaccess slowKey -int 0 # Disable Slow Keys.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool FALSE # Disable Press-And-Hold for keys.
defaults write NSGlobalDomain InitialKeyRepeat -int 10 # Set key repeat triggering delay to even shorter.
defaults write NSGlobalDomain KeyRepeat -int 3 # Set key repeat rate to even faster.

hostname > ~/yep_it_worked
