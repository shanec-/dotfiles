# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
export PATH=$PATH:/Users/[username]/.npm-packages/bin:/home/$USER/.dotnet/tools:$HOME/.local/bin

ZSH_THEME="elessar"

plugins=(ssh-agent git zsh-autosuggestions zsh-syntax-highlighting colored-man-pages)

[ -f $HOME/.config/zsh/home.zsh ] && source $HOME/.config/zsh/home.zsh
[ -f $HOME/.config/zsh/work.zsh ] && source $HOME/.config/zsh/work.zsh
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR='nvim'
export BROWSER='chromium'

set -o vi
echo "     " | lolcat

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit command in vim
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

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
alias ls='exa'
alias ytdl=$'docker run -it --rm -v ~/dl:/data wr/ytdl -f bestvideo+bestaudio '
alias ytdlb=$'docker run -it --rm -v ~/dl:/data wr/ytdl -f bestvideo+bestaudio --batch-file '
alias ytdlx=$'docker run -it --rm -v ~/dl:/data wr/ytdl -f bestvideo+bestaudio --external-downloader aria2c --external-downloader-args \'-c -j 10 -x 3 -s 3 -k 1M\' '
alias ytdlbx=$'docker run -it --rm -v ~/dl:/data wr/ytdl --external-downloader aria2c --external-downloader-args \'-c -j 10 -x 3 -s 3 -k 1M\' --batch-file '

# git
gt () {
    pushd -q $(git worktree list | awk '{print $1}' | fzf)
}

wk () {
    pushd -q $(ls -d ~/wk/* | fzf)
}

# wsl specific configuration
if grep -qi Microsoft /proc/version; then
	LS_COLORS="ow=01;36;40" && export LS_COLORS
	alias open=explorer.exe
	alias lcurl="cmd.exe /c curl"
    # alias drafts="cd `wslpath \"$(wslvar USERPROFILE)\"`/OneDrive/Blog"
    #
    alias cat='batcat'
else
    # node js version selector
    source /usr/share/nvm/init-nvm.sh
    
    # alternate apps
    alias cat='bat'
fi


# only remote connections
if [[ -n $SSH_CONNECTION ]]; then
	lastlog -u $USER | perl -lane 'END{print "Last login: @F[3..6] $F[8] from $F[2]"}'
fi

# mcfly config
export MCFLY_KEY_SCHEME=vim
export MCFLY_DISABLE_MENU=TRUE
eval "$(mcfly init zsh)"
