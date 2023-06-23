# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install


# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select

# https://thevaluable.dev/zsh-completion-guide-examples/
# sort files by modification date
zstyle ':completion:*' file-sort modification follow

# https://unix.stackexchange.com/a/6622/536187
autoload edit-command-line; zle -N edit-command-line

# https://unix.stackexchange.com/a/323282
zmodload zsh/complist

# prompt
autoload -Uz promptinit; promptinit
# prompt elite2 red
PROMPT='%F{blue}%n@%m%f %~ %(#.#.>) '

# aliases
alias vi='nvim --listen /tmp/nvimsocket'
alias ls='ls -lahvc --group-directories-first --color=auto'
alias mtp='aft-mtp-mount -o allow_other'
alias rm='rm -i'
alias sudo='sudo '
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# keys
bindkey '^j' down-line-or-history
bindkey '^k' up-line-or-history
bindkey '^r' history-incremental-search-backward # https://unix.stackexchange.com/a/30169

bindkey -M vicmd '^v' edit-command-line
 
# https://unix.stackexchange.com/a/323282
bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^j' vi-down-line-or-history
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char

# https://unix.stackexchange.com/a/84869/536187
bindkey -M menuselect "${terminfo[kcbt]}" reverse-menu-complete

# https://superuser.com/q/1498187
# https://stackoverflow.com/a/61538253
bindkey -M menuselect '^M' .accept-line

# ctrl-d fix
# https://wiki.archlinux.org/title/zsh#Shortcut_to_exit_shell_on_partial_command_line
exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh

# vi mode
export KEYTIMEOUT=1

# https://thevaluable.dev/zsh-install-configure-mouseless/
# https://unix.stackexchange.com/a/614203
# https://unix.stackexchange.com/a/1019
function zle-line-init zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    PROMPT="${PROMPT/>/<}"
 
    # The cursor highlights the following character fix.
    ZSH_HIGHLIGHT_HIGHLIGHTERS+=(cursor)

    echo -ne '\e[2 q'
  fi

  if
    [[ ${KEYMAP} == main ]] ||
    [[ ${KEYMAP} == viins ]] ||
    [[ ${KEYMAP} = '' ]] ||
    [[ $1 = 'beam' ]];
  then
    PROMPT="${PROMPT/</>}"

    # The cursor highlights the following character fix.
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp line root)

    echo -ne '\e[6 q'
  fi

  zle reset-prompt
}

zle -N zle-keymap-select
zle -N zle-line-init

# zle_highlight=('region:fg=black,bg=black')
# zle_highlight=('region:bg=255,fg=0, paste:bg=251,fg=168')
# zle_highlight=(region:bg=#264F78)

# text objects
# https://thevaluable.dev/zsh-install-configure-mouseless/
autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
  bindkey -M $km -- '-' vi-up-line-or-history
  for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
    bindkey -M $km $c select-quoted
  done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $km $c select-bracketed
  done
done

# https://unix.stackexchange.com/questions/290392/backspace-in-zsh-stuck
bindkey -v '^?' backward-delete-char

# plugins
source ~/.config/zsh/plugins/zsh-autopair/autopair.zsh; autopair-init
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh

# zsh-syntax-highlighting
# In insert mode, the cursor highlights the following character and it is cannot be visible.
# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp line root cursor)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp line root)

typeset -A ZSH_HIGHLIGHT_STYLES
typeset -A ZSH_HIGHLIGHT_PATTERNS
ZSH_HIGHLIGHT_STYLES[alias]=fg=white
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white
ZSH_HIGHLIGHT_STYLES[precommand]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
ZSH_HIGHLIGHT_STYLES[cursor]=bg=white
ZSH_HIGHLIGHT_STYLES[root]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=yellow,underline
ZSH_HIGHLIGHT_PATTERNS+=('sudo' fg=red,bold)
# ZSH_HIGHLIGHT_STYLES[region]=fg=blue
