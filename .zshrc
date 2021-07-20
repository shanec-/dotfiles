# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
export PATH=$PATH:/Users/[username]/.npm-packages/bin

ZSH_THEME="elessar"

plugins=(ssh-agent git zsh-autosuggestions)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa id_yen
zstyle :omz:plugins:ssh-agent lifetime 4h

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR='nvim'

set -o vi
fortune | cowsay | lolcat

# Add time stamp on the right hand side
RPROMPT='[%D{%L:%M:%S %p}]'

# dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"

#ip
alias ip="ip --color=auto"               # colorize
alias weather="curl http://wttr.in/Melbourne,Australia"
alias wgeto="wget -qO- "

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# wsl specific configuration
if grep -qi Microsoft /proc/version; then
	LS_COLORS="ow=01;36;40" && export LS_COLORS
	alias open=explorer.exe
	alias lcurl="cmd.exe /c curl"
    # alias drafts="cd `wslpath \"$(wslvar USERPROFILE)\"`/OneDrive/Blog"
fi

# only remote connections
if [[ -n $SSH_CONNECTION ]]; then
	lastlog -u $USER | perl -lane 'END{print "Last login: @F[3..6] $F[8] from $F[2]"}'
fi
