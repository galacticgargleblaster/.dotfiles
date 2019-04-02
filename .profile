if [[ ! -z `uname -a | grep Linux` ]]
then
	# if running bash
	if [ -n "$BASH_VERSION" ]; then
		# include .bashrc if it exists
		if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
		fi
	fi

	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
		PATH="$HOME/bin:$PATH"
	fi

	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/.local/bin" ] ; then
		PATH="$HOME/.local/bin:$PATH"
	fi

	export PATH="$HOME/.cargo/bin:$PATH"
	
	# map caps lock to escape please
	setxkbmap -option caps:escape
fi

if [[ ! -z `uname -a | grep Darwin` ]]
then
	# Some extra aliases to speed up this piscine
	alias lol="clang -Werror -Wextra -Wall"
	alias norm="norminette"
	alias code="/nfs/2018/n/nkirkby/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
	alias iprof="/Applications/Xcode.app/Contents//Developer/usr/bin/iprofiler"

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

	#Add ipython to path
	export PATH="${PATH}:/nfs/2018/n/nkirkby/Library/Python/3.7/bin"
	export PATH=$PATH:/nfs/2018/n/nkirkby/.lldb/voltron_venv/bin

	# add brew to path.  !brew to marvin for more information
	mkdir -p /tmp/.$(whoami)-brew-locks
	export PATH="$HOME/.brew/bin:$PATH"

	source ~/dotfiles/.osx
fi



alias gs="git status"
