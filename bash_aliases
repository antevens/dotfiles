# Editors
alias vi=vim

# SSH agent aliases
alias ssh-agent='eval $(/usr/bin/ssh-agent)'

# Alias for each key
key_files=($(find ${HOME}/.ssh/ -name 'id_*' | xargs file | grep 'OpenSSH private key' | awk -F: '{print $1}'))
for key in "${key_files[@]}"; do
    echo "Adding alias for ssh-key ${key}"
    basename="${key##*/}"
    alias "ssh-add-${basename}"="ssh-add '${key}'"
done

# Alias for each virtualenv
virtual_envs=($(find "${HOME}/Virtualenvs" -maxdepth 1 -type d ))
for venv in "${virtual_envs[@]}"; do
    echo "Adding alias for Virtualenv ${venv}"
    basename="${venv##*/}"
    alias "venv-${basename}"="source ${venv}/bin/activate"
done

# Directory/File listing
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
