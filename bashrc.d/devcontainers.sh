#!/bin/bash

# Include devcontainers bin dir in path
if [[ -d ${HOME}/.devcontainers/bin ]] ; then
    export PATH="${HOME}/.devcontainers/bin:${PATH}"
fi

# Add autocompluete for devcontainers.vim
if command -v devcontainer.vim > /dev/null ; then
   # shellcheck disable=1090,1091
   source <(devcontainer.vim  bash-complete-func)
fi
