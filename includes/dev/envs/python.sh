plugins+=( python pep8 pylint virtualenv virtualenvwrapper )

# Python virtualenvwrapper
export WORKON_HOME="$HOME/src/python"
source /usr/bin/virtualenvwrapper.sh

# Personal python library
export PYTHONPATH="$PYTHONPATH:$HOME/src/python/wild_things/wild_things"

