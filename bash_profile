#!/bin/bash
#######################################################
# Antonia Stevens .bash_profile file
#######################################################a
export FULL_NAME="Antonia Stevens"
export EMAIL="a@ant.st"
export GIT_BASE="${HOME}/Revisions"

if [[ -f "${HOME}/.bashrc" ]]; then
    source "${HOME}/.bashrc"
fi

# Debian maintainer config
export DEBEMAIL="${EMAIL}"
export DEBFULLNAME="${FULL_NAME}"

# Ubuntu maintainer config
export BZR_EDITOR="vim"
if command -v bzr > /dev/null; then
    bzr launchpad-login antevens
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files, see lesspipe(1)
if [[ -x /usr/bin/lesspipe ]] ; then
    export LESSOPEN="| /usr/bin/lesspipe %s"
    export LESSCLOSE="/usr/bin/lesspipe %s %s"
fi
