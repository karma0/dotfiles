# ZSH RC
#  Assemble and source the .zsh.d/*.sh files
find -L ~/.zsh.d -type f -iname '*.sh' | sort -n | while read src; do
  source $src
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/nomad nomad

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
