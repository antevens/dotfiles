#######################################################
# Antonia Stevens .bash_profile file
#######################################################a
FULL_NAME="Antonia Stevens"
EMAIL="a@ant.st"
GIT_BASE="${HOME}/Revisions"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
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
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
. "$HOME/.cargo/env"
