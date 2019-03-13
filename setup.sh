git submodule init && git submodule update

SYMLINKABLES=(
.profile
.zshrc
.macos
.tmux
.tmux.conf
.vscode
.oh-my-zsh
)

for i in "${SYMLINKABLES[@]}"
do
	ln -shfv `pwd`/$i $HOME/$i
done

