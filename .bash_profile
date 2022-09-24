

# CLI aliases
alias ls="ls -lhaF"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll='ls -lha'
alias cp='cp -v'
alias mv='mv -v'

# Python aliases
alias jp="jupyter notebook"

# Git aliases
alias gpom="git push origin main"
alias gad="git add ."
alias gc="git commit"
alias gs="git status"

# source in bash git syntax aware colors into bash profile
source ~/.bash_git_autocomplete
source ~/.bash_git_prompt
export PS1='$(__git_ps1 "(%s)") > '
source ~/.bash_git_syntax_aware

# Path stuff
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=~/opt/anaconda3/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Borroed from https://github.com/RadicalZephyr/home/blob/master/.bash_aliases#L79
archive() {
    mv $1{,.bak}
}

backup() {
    cp $1{,.bak}
}

restore() {
    mv $1 ${1%.bak}
}