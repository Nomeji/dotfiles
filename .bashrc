#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 6)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 4)\]\W\[$(tput setaf 1)\]]\\$ \[$(tput sgr0)\]"

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

export VISUAL=nano
export EDITOR="$VISUAL"
alias vim=nvim
alias vi=nvim
alias pastebin="curl -F c=@- https://ptpb.pw"
