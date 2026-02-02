# uwsm
if uwsm check may-start && uwsm select; then
	exec uwsm start default
fi
# end uwsm

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
# end pyenv
