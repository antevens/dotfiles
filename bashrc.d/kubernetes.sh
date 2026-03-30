#!/bin/bash

if command -v kubectl > /dev/null ; then
    alias k=kubectl
    mapfile -t contexts <<< "$(kubectl config get-contexts --no-headers | cut -c 7-59 | tr -d ' ')"
    for context in "${contexts[@]}" ; do
        #shellcheck disable=2139
        alias "${context}"="kubectl config use-context ${context}"
    done
fi

if command -v helm > /dev/null ; then
    alias h=helm
fi
