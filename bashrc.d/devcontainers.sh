#!/bin/bash

# Include devcontainers bin dir in path
if [[ -d ${HOME}/.devcontainers/bin ]] ; then
    export PATH="${HOME}/.devcontainers/bin:${PATH}"
fi

# Devcontainer shortcuts, see ~/bin/devc
if command -v devc > /dev/null ; then
    alias dcu='devc up'
    alias dcs='devc shell'
    alias dcc='devc claude'
    alias dcr='devc rebuild'
    alias dcx='devc stop'
    alias dcl='devc ls'
    complete -W "up shell claude rebuild stop rm init ls" devc
fi
