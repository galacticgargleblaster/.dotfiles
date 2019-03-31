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
	alias norm="~/Library/Norminette/norminette"

	#Add ipython to path
	export PATH="${PATH}:/nfs/2018/n/nkirkby/Library/Python/3.7/bin"
	export PATH=$PATH:/nfs/2018/n/nkirkby/.lldb/voltron_venv/bin

	alias gs="git status"
	source ~/dotfiles/.osx
fi
