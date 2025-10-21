if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  TERM=xterm-256color
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) TERM=xterm-256color;;
  esac
fi
