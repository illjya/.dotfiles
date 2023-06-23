#
# ~/.bashrc
#

set -o vi

bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi=nvim
alias ls='ls -lahvc --color=auto --group-directories-first'

PS1='[\u@\h \W]\$ '

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
