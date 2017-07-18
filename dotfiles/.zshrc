# Path to your oh-my-zsh installation.
export ZSH=/home/karma0/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
unsetopt INC_APPEND_HISTORY

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( \
  archlinux \
  aws \
  battery \
  bower \
  chucknorris \
  coffee \
  common-aliases \
  dircycle \
  docker \
  fabric \
  gpg-agent \
  gitfast \
  git-extras \
  httpie \
  history \
  jsontools \
  lol \
  mercurial \
  meteor \
  npm \
  nyan \
  pep8 \
  pip \
  pylint \
  python \
  rails \
  redis-cli \
  ruby \
  rvm \
  screen \
  sprunge \
  sudo \
  supervisor \
  svn \
  systemd \
  tmux \
  urltools \
  virtualenv \
  virtualenvwrapper \
  vagrant \
  web-search \
  )

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=vim
export VISUAL=$EDITOR

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

alias l="ls -Ah --color=auto"
alias ll="ls -lAh --color=auto"
alias e="emacs -nw"

alias chromium="chromium --ignore-gpu-blacklist"


#####
## Paths
###

# Add sbins and $HOME/bin
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/shares/code/bin:$HOME/bin"

# Node.js development
export PATH="./node_modules/.bin:$PATH"

# chef-zero
#export PATH="$PATH:$HOME/.chefdk/gem/ruby/2.1.0/bin"

# CCACHE on non-portage
export PATH="/usr/lib/ccache/bin:$PATH"

# Python virtualenvwrapper
#export WORKON_HOME="$HOME/src/python"
#source /usr/bin/virtualenvwrapper.sh

# Personal python library
export PYTHONPATH="$PYTHONPATH:$HOME/src/python/wild_things/wild_things"

# CudaNN
#if [ "$LD_LIBRARY_PATH" == "" ]; then
#  export LD_LIBRARY_PATH=/usr/local/cuda/lib64
#else
#  export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
#fi
export CUDA_HOME=/usr/local/cuda

# System install of ruby
export PATH="$PATH:/home/karma0/.gem/ruby/2.3.0/bin"

# Heroku
PATH="/usr/local/heroku/bin:$PATH"

# Google Cloud
# enable shell command completion for gcloud.
source /opt/google-cloud-sdk/completion.zsh.inc
# add the Google Cloud SDK command line tools to your $PATH.
source /opt/google-cloud-sdk/path.zsh.inc


valve () {
  LD_PRELOAD='/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so' steam
}



#####
## Other settings
###

export TERM=xterm-256color


