# env variables
EDITOR=nvim
TERMINAL=urxvt

# PATH
export PATH="$HOME/.scripts:$PATH"
export PATH="$HOME/bin:$PATH"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
	exec startx
fi
