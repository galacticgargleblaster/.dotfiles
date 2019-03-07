#!/bin/sh

# Do these settings persist after logging out and back in?
# Where are they stored?  When are they read?  What did I have for breakfast?


#!/bin/sh
# Credit to Brad Howes
FROM='"HIDKeyboardModifierMappingSrc"'
TO='"HIDKeyboardModifierMappingDst"'

ARGS=""
function Map # FROM TO
{
    CMD="${CMD:+${CMD},}{${FROM}: ${1}, ${TO}: ${2}}"
}

# Referencing :
# https://opensource.apple.com/source/IOHIDFamily/IOHIDFamily-1035.41.2/IOHIDFamily/IOHIDUsageTables.h.auto.html
SECTION="0x700000064"
ESCAPE="0x700000029"
BACKQUOTE="0x700000035"
CAPS_LOCK="0x700000039"
L_SHIFT="0x7000000E1"
R_COMMAND="0x7000000E7"
L_CONTROL="0x7000000E0"

Map ${CAPS_LOCK} ${ESCAPE}
#Map ${SECTION} ${ESCAPE}
#Map ${R_COMMAND} ${SHIFT_LOCK}
#Map ${BACKQUOTE} ${L_CONTROL}

hidutil property --set "{\"UserKeyMapping\":[${CMD}]}"




# These key repeat settings unfortunately don't take effect until logging out and logging back in.  Where are these settings persisted?

defaults write com.apple.universalaccess slowKey -int 0 # Disable Slow Keys.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool FALSE # Disable Press-And-Hold for keys.
defaults write NSGlobalDomain InitialKeyRepeat -int 10 # Set key repeat triggering delay to even shorter.
defaults write NSGlobalDomain KeyRepeat -int 3 # Set key repeat rate to even faster.

hostname > ~/hmm_it_ran

# Start sshd
/usr/sbin/sshd -f /nfs/2018/n/nkirkby/.ssh/sshd_config -h /nfs/2018/n/nkirkby/.ssh/id_rsa -p3500 -E ~/.ssh/sshlogs
