# ZSH prompt
local ret_status="%(?:%{$fg_bold[green]%}§ :%{$fg_bold[red]%}§ )"
PROMPT='%{$fg[cyan]%}%c%{$reset_color%}$(git_prompt_info) ${ret_status}%{$reset_color%}'

# Git prompts
GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}(%{$fg[red]%}"
GIT_PROMPT_SUFFIX="%{$reset_color%}"
GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$fg[blue]%})"
GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Outputs current branch info in prompt format
function git_prompt_info() {
    local ref
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
function parse_git_dirty() {
    if [[ -n $(command git status --porcelain 2> /dev/null | tail -n1) ]]; then
        echo "$GIT_PROMPT_DIRTY"
    else
        echo "$GIT_PROMPT_CLEAN"
    fi
}

