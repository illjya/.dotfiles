#
# ~/.bash_profile
#
export EDITOR=nvim

# https://stackoverflow.com/a/69998679/12948018
# export FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

[[ -f ~/.bashrc ]] && . ~/.bashrc
