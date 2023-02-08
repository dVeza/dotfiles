function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{cyan}%~ %F{magenta}$(parse_git_branch)%F{white} $ '

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
