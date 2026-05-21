#!/bin/bash

if command -v kubectl > /dev/null ; then
    alias k=kubectl
    mapfile -t contexts <<< "$(kubectl config get-contexts --no-headers | cut -c 7-59 | tr -d ' ')"
    for context in "${contexts[@]}" ; do
        #shellcheck disable=2139
        alias "${context}"="kubectl config use-context ${context}"
    done
fi

# Get kubectl completion
if command -v kubectl > /dev/null ; then
   # shellcheck disable=1090,1091
   source <(kubectl completion bash)
fi

# Get kubebuilder completion
if command -v kubectl > /dev/null ; then
   # shellcheck disable=1090,1091
   source <(kubebuilder completion bash)
fi
