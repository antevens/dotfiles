#!/bin/bash

# Include devcontainers bin dir in path
if [[ -d ${HOME}/.devcontainers/bin ]] ; then
    export PATH="${HOME}/.devcontainers/bin:${PATH}"
fi

# devc command completion, see ~/bin/devc
if command -v devc > /dev/null ; then
    # shellcheck disable=1090,1091
    source <(devc completion bash)
fi
