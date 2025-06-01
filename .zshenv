# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Podman Docker
export DOCKER_HOST="unix:///run/user/1000/podman/podman.sock"

. "$HOME/.local/bin/env"
. "$HOME/.cargo/env"
