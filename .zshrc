#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#                         

source /home/aaron/.zsh_aliases

HISTFILE=~/.zshhist
HISTSIZE=1000
SAVEHIST=10000
bindkey -v

# Look up what compinit is
#zstyle :compinstall filename '/home/aaron/.zshrc'
autoload -Uz compinit promptinit
compinit
#
autoload -U colors && colors
bindkey '^R' history-incremental-search-backward

# PS1 Options
# PS1="[%n@%m %~]$ "
#PS1="%F{007}[%f%F{009}%n%f%F{007}@%f%F{012}%m%f %~%F{007}]%f $ "
#PS1="%F{007}[%f%F{009}%n%f%F{007}@%f%F{012}%m%f %~%F{007}]%f $ "
PS1=$'\n%F{007}┌─[%f%F{009}%n%f%F{007}@%f%F{012}%m%f %~%F{007}]%f\n└$ '
#PS1="%~ $ "
#PS1="[%~] $ "

# use nvim for man
export MANPAGER="nvim +Man!"

# add .scripts to path (zprofile)
#export PATH="$HOME/.scripts:$PATH"

# print your todo list
if false ; then
	echo "--------------------  TO DO  --------------------"
	cat /home/aaron/todo
	echo "-------------------------------------------------\n"
fi

