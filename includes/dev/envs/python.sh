plugins+=( \
  python \
  pep8 \
  pylint \
  pyenv \
  pip \
  #virtualenv \
  #virtualenvwrapper \
)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Python virtualenvwrapper
export WORKON_HOME="$HOME/src/python"

# Personal python library
[ -d "$HOME/src/python/wild_things/wild_things" ] && \
  export PYTHONPATH="$PYTHONPATH:$HOME/src/python/wild_things/wild_things"

cdpath+=( ~/src/python )
