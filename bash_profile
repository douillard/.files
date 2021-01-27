# Config
set -o vi

# ---------- EXPORTS ---------- #
export LC_ALL="en_US.UTF-8" # Prefer US English and use UTF-8
export LANG="en_US"
export HISTCONTROL=ignoredups:erasedups
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTSIZE=100000
export TERM=xterm-256color  # Set colors to match iTerm2 Terminal Colors

# ---------- PATH ---------- #
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/data/db

# ---------- ALIAS ---------- #
alias ag="ag --path-to-ignore ~/.ignore"
alias dc="docker-compose"
alias dd="docker"
alias fb="firebase"
alias ku="kubectl"
alias kuc="kubectl config"
alias python="python3"
alias tf="terraform"
alias wget="curl -O"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias cb="cd ~/Codebase"
alias tr="trash"


# Other
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
#; for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
for file in ~/.{extra,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

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

# git auto complete
# [ -d /usr/local/etc/bash_completion.d ] && . /usr/local/etc/bash_completion.d/*
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/chris/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/chris/Downloads/google-cloud-sdk/completion.bash.inc'; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/douillard/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/douillard/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/douillard/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/douillard/Downloads/google-cloud-sdk/completion.bash.inc'; fi

complete -C /usr/local/bin/terraform terraform

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/douillard/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/douillard/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/douillard/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/douillard/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<
[[ -f ~/.work_profile ]] && source ~/.work_profile
