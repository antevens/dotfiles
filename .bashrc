#######################################################
# Jarl Stefanssons .bashrc filea
#######################################################

# Use ghar for storing dotfiles in git/github
export PATH=$PATH:~/bin/:~/Revisions/ghar/bin/

# Use proper prompts for RHEL/Centos/Fedora boxes
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME}" "${PWD/#$HOME/~}"'
PS1='\[\033[01;32m\]\u@\H:\[\033[01;34m\]\w\$\[\033[00m\] '

alias vi=vim
