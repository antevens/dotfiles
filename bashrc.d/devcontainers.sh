#!/bin/bash

# Include devcontainers bin dir in path
if [[ -d ${HOME}/.devcontainers/bin ]] ; then
    export PATH="${HOME}/.devcontainers/bin:${PATH}"
fi
