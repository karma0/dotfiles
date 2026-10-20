# wasmtime: only when it is installed in its standard place (the wasmtime.dev installer's default).
# The installer appends an unconditional WASMTIME_HOME block to ~/.zshrc; move it here instead.
if [ -d "$HOME/.wasmtime/bin" ]; then
  export WASMTIME_HOME="$HOME/.wasmtime"
  export PATH="$WASMTIME_HOME/bin:$PATH"
fi
