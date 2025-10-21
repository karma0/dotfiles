# ls
alias l="ls -AFCh --color=auto"
alias la="ls -ah --color=auto"
alias ll="ls -lAFh --color=auto"
alias lt="ls -lAhFrt --color=auto"

# File mgmt
alias cp="cp -rv"
alias mv="mv -v"
alias mkdir="mkdir -pv"
alias wget="wget -c"

# Command line head / tail shortcuts 
alias t='tail -f'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null" 
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias fd='find . -type d -name'
alias ff='find . -type f -name'

# fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias h='fasd -d'        # directory
alias t='fasd -f'        # file
alias sh='fasd -sid'     # interactive directory selection
alias st='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive session

alias h='history'

#alias e="emacs -nw"
alias vi="$EDITOR"
alias vim="$EDITOR"

alias homesick="homeshick"
alias hsh="homeshick"
