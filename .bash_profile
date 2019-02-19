export HISTCONTROL=ignoredups:erasedups
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTSIZE=100000
export EC2REGION=us-west-2a

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

set -o vi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

alias wget="curl -O"

alias dd="docker"
alias dc="docker-compose"
alias ku="kubectl"
alias gc="gcloud"

#alias python="python3"
#alias pip="pip3"

alias sb="cd ~/Sandbox"
alias ba="cd ~/Sandbox/baloo"
alias od="cd ~/Sandbox/orderlydata"

#alias ecs="ecs-cli"
#alias ec="ecs-cli compose"
#alias cf="aws cloudformation"

alias baloo='ssh -t chris@baloocare.com "cd /var/www/staging ; ./build.sh ; bash"'

alias gitd='/usr/bin/git --git-dir=/home/ldap/cdouillard/.cfg/ --work-tree=/home/ldap/cdouillard'

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
#; for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
for file in ~/.{extra,exports,aliases,functions}; do
        [ -r "$file" ] && source "$file"
        done
        unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config |
grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export DOCKER_ACCT=orderlyhealth
export APP_ENV=development
# export NODE_ENV=development
export DEV_ENV=cdouillard
export NODE_PORT=3000

export PATH=/usr/local/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/data/db:$PATH

export NVM_DIR="$HOME/.nvm"
 . "/usr/local/opt/nvm/nvm.sh"

export GOPATH=$HOME/work
export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chris/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/chris/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chris/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/chris/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# git auto complete
# [ -d /usr/local/etc/bash_completion.d ] && . /usr/local/etc/bash_completion.d/*
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
