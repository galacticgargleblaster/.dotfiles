#!/bin/bash
git submodule init && git submodule update

SYMLINKABLES=(
.profile
.zshrc
.tmux
.tmux.conf
.vscode
.oh-my-zsh
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

for i in "${SYMLINKABLES[@]}"
do
	ln -sfvT `pwd`/$i $HOME/$i
done
