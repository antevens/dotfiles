#######################################################
# Jarl Stefanssons .bashrc file
#######################################################a
FULL_NAME="Jarl Stefansson"
EMAIL="jarl.stefansson@gmail.com"
GIT_BASE="${HOME}/Revisions"

# Add Local bin directory and ghar bin directory to path
export PATH=${PATH}:~/bin:${GIT_BASE}/ghar/bin

# Bash style tab completion for ghar
${GIT_BASE}/ghar/ghar-bash-completion.sh

# Use proper prompts for RHEL/Centos/Fedora boxes
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME}" "${PWD/#$HOME/~}"'
PS1='\[\033[01;32m\]\u@\H:\[\033[01;34m\]\w\$\[\033[00m\] '

# Some aliases
alias vi=vim

# Set colors for ls and CLI on Mac
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git config
git config --global user.name "Jarl Stefansson"
git config --global user.email jarl.stefansson@gmail.com 
git config --global credential.helper cache # Set git to use the credential memory cache
git config --global credential.helper 'cache --timeout=3600' # Set the cache to timeout after 1 hour (setting is in seconds)
git config --global core.editor vim
git config --global push.default matching

# Debian maintainer config
export DEBEMAIL=$EMAIL
export DEBFULLNAME=$FULL_NAME

# Ubuntu maintainer config
BZR_EDITOR="vim"
if which bzr > /dev/null; then
    bzr launchpad-login jarl
fi

# Ghar, store dotfiles in GIT
# Pull latest on each login
ghar pull > /dev/null
ghar install > /dev/null

# Run additional bashrc scipts or if .bashrc.d does not exist
# create .bashrc.d directory
# Only execute additional .bashrc scripts if they are secure, e.g. owned by the
# user that is starting bash and not writable by others
if [ -d "$HOME/.bashrc.d" ]; then
    for script in `find $HOME/.bashrc.d/ -type f -perm -g-xw,o-xw -user $USER`; do
        source $script
    done
else
    mkdir $HOME/.bashrc.d && chmod 700 $HOME/.bashrc.d && chmod -R og-wrx $HOME/.bashrc.d
fi

# If rbenv is installed we initialize rbenv for multiple ruby environments
which rbenv >> /dev/null && eval "`rbenv init -`"
