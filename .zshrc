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

# Prompt
# PS1="[%n@%m %~]$ "
# Fancy Colorful Prompt
PS1="%F{007}[%f%F{009}%n%f%F{007}@%f%F{012}%m%f %~%F{007}]%f $ "
