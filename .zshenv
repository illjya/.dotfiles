export EDITOR=nvim

# https://stackoverflow.com/a/69998679/12948018
# export FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
export FZF_DEFAULT_COMMAND='fd --type f  -H -E '.git' --strip-cwd-prefix'

# pass
# The default password length if the pass-length parameter to generate is unspecified.
export PASSWORD_STORE_GENERATED_LENGTH=16
