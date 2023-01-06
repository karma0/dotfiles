# ZSH RC
#  Assemble and source the .zsh.d/*.sh files
find -L ~/.zsh.d -type f -iname '*.sh' | sort -n | while read src; do
  source $src
done

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/robert.larson/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/robert.larson/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/robert.larson/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/robert.larson/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

