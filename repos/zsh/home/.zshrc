# ZSH RC
#  Assemble and source the .zsh.d/*.sh files
find -L ~/.zsh.d -type f -iname '*.sh' | sort -n | while read src; do
  source $src
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
