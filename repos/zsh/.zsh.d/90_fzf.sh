# Setup fzf
# ---------
#
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

if [ -d "$HOME/.fzf" ]; then

  if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
    export PATH="$PATH:$HOME/.fzf/bin"
  fi

  # Auto-completion
  # ---------------
  [[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null

  # Key bindings
  # ------------
  source "$HOME/.fzf/shell/key-bindings.zsh"
fi
