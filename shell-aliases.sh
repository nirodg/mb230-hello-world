# MB230 hello-world helper aliases
# Add to your shell rc (e.g. ~/.zshrc or ~/.bashrc):
#   source /path/to/mb230-hello-world/shell-aliases.sh
# or copy the alias lines you want.

MB230_HELLO_WORLD_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]:-$0}")" && pwd)"

# Always build the hello-world ARM binary via Docker
alias mb230-hello-build='(cd "$MB230_HELLO_WORLD_DIR" && ./build-docker.sh)'

# Serve hello-world over HTTP for TV wget upload (default port 8000)
alias mb230-hello-serve='(cd "$MB230_HELLO_WORLD_DIR" && python3 -m http.server 8000)'
