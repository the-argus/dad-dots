#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function ls () { command ls --color=auto --group-directories-first "$@"; }

function lsl () {
	ls -la --color=always $1 | command grep "^d" && ls -la $1 | command grep -v "^d"
}

function diff () { command diff --color=auto "$@"; }

function grep () { command grep "$@" --color=always; }

function ip () { command ip -color=auto "$@"; }

function pc () { sudo pacman --color always "$@"; }

function pacman () { command pacman --color always "$@"; }

function rm () { command rm -i "$@"; }

function pcmin () { command pacman "$@" --color=never | cut -f 1 -d " "; }

function vol () { pactl set-sink-volume @DEFAULT_SINK@ "$1"; }

function background () {
	feh --bg-center $1;
}

duk ()
{
   sudo du -k "$@" | sort -n
}

# aliases
alias batt="cat /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0A:00/power_supply/BAT0/capacity"
alias neofetch="neofetch --gtk2 off --gtk3 off"
alias pipes.sh="pipes.sh -c 1 -c 2 -c 3 -c 4 -c 5 -c 6 -c 7"
alias weather="curl wttr.in"
alias logout="i3-msg exit"

PS1='[\u@\h \W]\$ '

#source ~/.sexybash
eval "$(starship init bash)"
