SYMLINKABLES=(
.profile
.zshrc
.macos
.tmux
.tmux.conf
)

for i in "${SYMLINKABLES[@]}"
do
	ln -sfv `pwd`/$i $HOME/$i
done

