# check dir
if [ ! -d "$ZDOTDIR/plugins" ]; then
    mkdir -p $ZDOTDIR/plugins
fi

# check if p10k exists
if [ ! -d "$ZDOTDIR/plugins/powerlevel10k" ]; then
    echo "Installing powerelevel10k theme."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZDOTDIR/plugins/powerlevel10k
fi

source $ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme

# check if zsh autosuggest exists
if [ ! -d "$ZDOTDIR/plugins/zsh-autosuggestions" ]; then
    echo "Installing zsh autosuggestions."
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZDOTDIR/plugins/zsh-autosuggestions
fi

source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# check if zsh syntax highlighting exists
if [ ! -d "$ZDOTDIR/plugins/zsh-syntax-highlighting" ]; then
    echo "Installing zsh syntax highlighting."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZDOTDIR/plugins/zsh-syntax-highlighting
fi

source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
