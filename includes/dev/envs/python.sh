plugins+=( \
  python \
  pep8 \
  pylint \
  #virtualenv \
  #virtualenvwrapper \
)

# Python virtualenvwrapper
export WORKON_HOME="$HOME/src/python"

# Personal python library
[ -d "$HOME/src/python/wild_things/wild_things" ] && \
  export PYTHONPATH="$PYTHONPATH:$HOME/src/python/wild_things/wild_things"

cdpath+=( ~/src/python )
