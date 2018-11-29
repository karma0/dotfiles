# ZSH RC
#  Assemble and source the .zsh.d/*.sh files
find -L ~/.zsh.d -type f -iname '*.sh' | sort -n | while read src; do
  source $src
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

<<<<<<< Updated upstream
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/nomad nomad
=======
# added by travis gem
[ -f /home/rlarson/.travis/travis.sh ] && source /home/rlarson/.travis/travis.sh
>>>>>>> Stashed changes
