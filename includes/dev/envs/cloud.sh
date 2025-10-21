plugins+=(
  docker \
  fabric \
  vagrant \
  kubectl \
)

# chef-zero
#export PATH="$PATH:$HOME/.chefdk/gem/ruby/2.1.0/bin"

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Heroku
[ -d "/usr/local/heroku/bin" ] && export PATH="/usr/local/heroku/bin:$PATH"

# Google Cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/b/build/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/b/build/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/b/build/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/b/build/google-cloud-sdk/completion.zsh.inc'; fi

cdpath+=(
  ~/src/terraform
  ~/src/tf
)
