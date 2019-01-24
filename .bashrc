#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

export VISUAL=nano
export EDITOR="$VISUAL"
alias vim=nvim
alias vi=nvim
alias pastebin="curl -F c=@- https://ptpb.pw"
