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

