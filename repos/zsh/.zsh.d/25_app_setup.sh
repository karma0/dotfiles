# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]* }//,/ })'

# Preferred editor depending on what's available
if [[ -f $(which nvim) ]]; then
	export EDITOR='nvim'
else
	export EDITOR='vim'
fi
export VISUAL=$EDITOR

# Setup homeshick
export DOTS=$HOME/.homesick
export HOSTCLASS=${$(hostname)%%[.0-9]*}
source $DOTS/repos/homeshick/homeshick.sh
fpath=($DOTS/repos/homeshick/completions $fpath)

# fasd
export ZSH_CACHE_DIR=$HOME/.zsh_cache/fasd-init-cache

# (git)hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
[[ -x $(which hub) ]] && eval "$(hub alias -s)"

# Google Cloud SDK
[ -f '/home/rlarson/src/google-cloud-sdk/path.zsh.inc' ] && source '/home/rlarson/src/google-cloud-sdk/path.zsh.inc'
[ -f '/home/rlarson/src/google-cloud-sdk/completion.zsh.inc' ] && source '/home/rlarson/src/google-cloud-sdk/completion.zsh.inc'
