plugins+=( \
  bower \
  coffee \
  meteor \
  npm \
  bun \
)

# Node.js development
export PATH="./node_modules/.bin:$PATH"

# bun completions
[ -s "/Users/b/.bun/_bun" ] && source "/Users/b/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
