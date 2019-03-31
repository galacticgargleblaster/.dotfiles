# If you come from bash you might have to change your $PATH.

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
#ZSH_THEME="half-life"

# "tjkirch" shows directories relative to home and has nice colors
# "half-life" has good clauses

ZSH_DISABLE_COMPFIX="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  battery
)

source $ZSH/oh-my-zsh.sh

# This one has some deps that are not easily installed
if [ '$RANDOM_THEME' = '3den' ]
then
	source $ZSH/oh-my-zsh.sh
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# this only works if iterm2 is setup to send these escape sequences.  This seems to need resetting on every Mac I log in to :/
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# Load environment variables in the user profile
source ~/.profile

# add brew to path.  !brew to marvin for more information
mkdir -p /tmp/.$(whoami)-brew-locks
export PATH="$HOME/.brew/bin:$PATH"

# Configure go_c alias for a C repl.
go_libs="-lm"
go_flags="-g -Wall -Werror -Wextra -include ~/.allheads.h -O3"
alias go_c="clang -xc - $go_libs $go_flags << '---' && ./a.out"
alias go_c_dbg="clang -xc -g - $go_libs $go_flags << '---' && lldb a.out"
alias go_c_soon="clang -xc - $go_libs $go_flags << '---'"
alias help="apropos"

# Some extra aliases to speed up this piscine
alias lol="clang -Werror -Wextra -Wall"
alias norm="norminette"
alias code="/nfs/2018/n/nkirkby/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias iprof="/Applications/Xcode.app/Contents//Developer/usr/bin/iprofiler"

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# vim mode for zsh
bindkey -v
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward  # apparently ctrl+r for reverse search is an emacs feature


