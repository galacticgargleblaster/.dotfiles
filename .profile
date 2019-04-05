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
	alias lol="clang -Werror -Wextra -Wall"
	alias norm="norminette"
	alias code="/nfs/2018/n/nkirkby/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
	alias iprof="/Applications/Xcode.app/Contents//Developer/usr/bin/iprofiler"
	alias xpra="/nfs/2018/n/nkirkby/Applications/Xpra.app/Contents/MacOS/Xpra"

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

	#Add ipython to path
	export PATH="${PATH}:/nfs/2018/n/nkirkby/Library/Python/3.7/bin"
	export PATH=$PATH:/nfs/2018/n/nkirkby/.lldb/voltron_venv/bin

	# add gcc to the path, the real GCC! compiled from source!  
	# https://solarianprogrammer.com/2017/05/21/compiling-gcc-macos/
	export PATH="$HOME/.local/gcc-8.3/bin:$PATH"
	# Libraries have been installed in:
	#    /nfs/2018/n/nkirkby/.local/gcc-8.3/lib
	# 
	# If you ever happen to want to link against installed libraries
	# in a given directory, LIBDIR, you must either use libtool, and
	# specify the full pathname of the library, or use the `-LLIBDIR'
	# flag during linking and do at least one of the following:
	#    - add LIBDIR to the `DYLD_LIBRARY_PATH' environment variable
	#      during execution
	# 
	# See any operating system documentation about shared libraries for
	# more information, such as the ld(1) and ld.so(8) manual pages.

	# add brew to path.  !brew to marvin for more information
	mkdir -p /tmp/.$(whoami)-brew-locks
	export PATH="$HOME/.brew/bin:$PATH"

	source ~/dotfiles/.osx
fi



alias gs="git status"
