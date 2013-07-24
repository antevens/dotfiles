#######################################################
# Jarl Stefanssons .bashrc file
#######################################################a

GIT_BASE="${HOME}/Revisions"

# Add Local bin directory and ghar bin directory to path
export PATH=${PATH}:~/bin/:${GIT_BASE}/ghar/bin/

# Bash style tab completion for ghar
${GIT_BASE}/ghar/ghar-bash-completion.sh

# Use proper prompts for RHEL/Centos/Fedora boxes
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME}" "${PWD/#$HOME/~}"'
PS1='\[\033[01;32m\]\u@\H:\[\033[01;34m\]\w\$\[\033[00m\] '

# Some aliases
alias vi=vim

random_wrapper() {
    if [ "$1" == "" ]; then
        echo "Random requires length parameter!"
        exit 1
    fi
    dd if=/dev/urandom bs=$1 count=1 | base64 | sed '$s/.$//'
}

alias random=random_wrapper

# Set colors for ls and CLI
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git config
git config --global user.name "Jarl Stefansson"
git config --global user.email jarl.stefansson@gmail.com 
git config --global credential.helper cache # Set git to use the credential memory cache
git config --global credential.helper 'cache --timeout=3600' # Set the cache to timeout after 1 hour (setting is in seconds)

# Ghar, store dotfiles in GIT
# Pull latest on each login
ghar pull > /dev/null
ghar install > /dev/null

# Run additional bashrc scipts or if .bashrc.d does not exist
# create .bashrc.d directory and enforce permissions
# Make sure additional scripts are only executable by owner
if [ -d $HOME/.bashrc.d ]; then
    for script in `find $HOME/.bashrc.d/ -type f -perm -u+x,g-w,o-w`; do
        source $script
    done
else
    mkdir $HOME/.bashrc.d && chmod 700 $HOME/.bashrc.d && chmod -R og-wrx $HOME/.bashrc.d
fi
