# Load NVM
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Setup FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Edit command line in vim by pressing C-x C-e
export VISUAL=vim
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

export TERM=screen-256color

export PATH="$HOME/bin:$PATH"
