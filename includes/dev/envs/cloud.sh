plugins+=( aws docker fabric vagrant )

# chef-zero
#export PATH="$PATH:$HOME/.chefdk/gem/ruby/2.1.0/bin"

# Heroku
[ -d "/usr/local/heroku/bin" ] && export PATH="/usr/local/heroku/bin:$PATH"

# Google Cloud
# enable shell command completion for gcloud.
[ -f "/opt/google-cloud-sdk/completion.zsh.inc" ] && \
		source /opt/google-cloud-sdk/completion.zsh.inc
# add the Google Cloud SDK command line tools to your $PATH.
[ -f "/opt/google-cloud-sdk/path.zsh.inc" ] && \
		source /opt/google-cloud-sdk/path.zsh.inc

