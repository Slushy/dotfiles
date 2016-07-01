# Install vim plugin manager
if [[ ! -f ~/.config/nvim/autoload/plug.vim ]]; then
		curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
				https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# TODO: use CWD instead of hardcoded path
# --------------------------------------------------
# Create soft links
# --------------------------------------------------

: ${DOTFILE_DIR:=~/.dotfiles}
: ${DOTFILE_LOCAL_DIR:=~/.dotfiles-local}

[ ! -d $DOTFILE_LOCAL_DIR ] && mkdir $DOTFILE_LOCAL_DIR

# ZSH
ln -svf $DOTFILE_DIR/system/zshrc ~/.zshrc
ln -svf $DOTFILE_DIR/system/zshenv ~/.zshenv

# Vim
ln -svf $DOTFILE_DIR/vim/init.vim ~/.config/nvim/init.vim
ln -svf $DOTFILE_DIR/vim/settings.vim ~/.config/nvim/settings.vim

# Git
ln -svf $DOTFILE_DIR/git/gitconfig ~/.gitconfig

# Tmux
ln -svf $DOTFILE_DIR/tmux/tmux.conf ~/.tmux.conf
