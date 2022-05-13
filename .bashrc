#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;32m[\u@\h\e[0m \e[1;36m\W\e[1;32m]\$ \[\e[0m\]'

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

export VISUAL=nano
export EDITOR="$VISUAL"
alias vim=nvim
alias vi=nvim
alias pastebin="curl -F c=@- https://ptpb.pw"

source ~/.nvm/nvm.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
