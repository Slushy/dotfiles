#!/bin/env zsh

local ret_status="%(?:%{$fg_bold[green]%}§ :%{$fg_bold[red]%}§ )"
PROMPT='%{$fg[cyan]%}%c%{$reset_color%}$(git_prompt_info) ${ret_status}%{$reset_color%}'

GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}(%{$fg[red]%}"
GIT_PROMPT_SUFFIX="%{$reset_color%}"
GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$fg[blue]%})"
GIT_PROMPT_CLEAN="%{$fg[blue]%})"