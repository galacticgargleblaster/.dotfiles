git submodule init && git submodule update

SYMLINKABLES=(
.profile
.zshrc
.macos # this one's a directory
.osx  # this one's a file
.tmux
.tmux.conf
.vscode
.oh-my-zsh
)

for i in "${SYMLINKABLES[@]}"
do
	ln -shfv `pwd`/$i $HOME/$i
done

if [[ ! -z `uname -a | grep Darwin` ]]
then
	ln -shfv ~/.macos/plists/* ~/Library/LaunchAgents/
	launchctl load -w ~/Library/LaunchAgents/*

	rm -rf ~/Library/Application\ Support/Code/User
	ln -sfv ~/dotfiles/.vscode/ ~/Library/Application\ Support/Code/User
	ln -sfv ~/dotfiles/.vscode/extensions ~/Applications/code-portable-data
	ln -sfv ~/dotfiles/.vscode/ ~/Applications/code-portable-data
fi
