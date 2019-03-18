alias norm="~/Library/Norminette/norminette"

#Add ipython to path
export PATH="${PATH}:/nfs/2018/n/nkirkby/Library/Python/3.7/bin"
export PATH=$PATH:/nfs/2018/n/nkirkby/.lldb/voltron_venv/bin

alias gs="git status"

if [[ ! -z `uname -a | grep Darwin` ]]
then
	source ~/dotfiles/.osx
fi
