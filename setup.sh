SYMLINKABLES=(
.profile
.zshrc
.macos
.tmux
.tmux.conf
.vscode
)

for i in "${SYMLINKABLES[@]}"
do
	ln -shfv `pwd`/$i $HOME/$i
done

