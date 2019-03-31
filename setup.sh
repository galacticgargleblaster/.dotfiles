#!/bin/bash
git submodule init && git submodule update

SYMLINKABLES=(
.profile
.zshrc
.tmux
.tmux.conf
)

if [[ ! -z `uname -a | grep Darwin` ]]
then
	SYMLINKABLES=("${SYMLINKABLES[@]}" ".macos" ".osx")
	ln -shfv ~/.macos/plists/* ~/Library/LaunchAgents/
	launchctl load -w ~/Library/LaunchAgents/*

	rm -rf ~/Library/Application\ Support/Code/User
	ln -sfv ~/dotfiles/.vscode/ ~/Library/Application\ Support/Code/User
	ln -sfv ~/dotfiles/.vscode/extensions ~/Applications/code-portable-data
	ln -sfv ~/dotfiles/.vscode/ ~/Applications/code-portable-data
fi

if [[ ! -z `uname -a | grep Linux` ]]
then
	ln -sfvT ~/repos/dotfiles/.vscode ~/.vscode
fi

for i in "${SYMLINKABLES[@]}"
do
	ln -sfvT `pwd`/$i $HOME/$i
done
