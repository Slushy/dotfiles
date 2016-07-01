# --------------------------------------
# UNIX
# --------------------------------------

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Common 
ls --color -d . &>/dev//null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
alias ll="ls -al"       # show all files in long format
alias lh="ls -d .*"     # show hidden files/directories only
alias lsd="ls -ld *"    # show directories only
alias mkdir="mkdir -p"  # make all directories that don't exist

alias e="$EDITOR"
alias history='fc -l 1' 
alias path='echo $PATH | tr -s ":" "\n"'  # Pretty print the path value

# --------------------------------------
# Git
# --------------------------------------
alias gs='git status'
alias gd='git diff'
alias glog='git log --oneline --decorate --graph'
