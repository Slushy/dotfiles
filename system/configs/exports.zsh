# Editor
# - nvim preferred, fallback to vim
if which nvim &> /dev/null; then
  export EDITOR=nvim
elif which vim &> /dev/null; then
  export EDITOR=vim
fi

# Colors
export LSCOLORS="GxFxcxdxbxegedabagacad"
export CLICOLOR=1
