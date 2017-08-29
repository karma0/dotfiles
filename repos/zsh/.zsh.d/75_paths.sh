# sbins
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin"

# shared bin path
[ -d "$HOME/shares/code/bin" ] && export PATH="$PATH:$HOME/shares/code/bin"

# local installations
[ -d "$HOME/.local/bin" ] && export PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/local/bin" ] && export PATH="$PATH:$HOME/local/bin"

# $HOME/bin
export PATH="$PATH:$HOME/bin"
