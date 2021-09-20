# Load NVM
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Setup FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Edit command line in vim by pressing C-x C-e
export VISUAL=vim
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# PROMPT
export PROMPT="%~> "

# PATH
export PATH="$HOME/bin:$HOME/.cargo/bin:$PATH:/usr/local/go/bin"

export HISTFILE=~/.histfile
export SAVEHIST=10000

# Aliases
alias ls='ls --color=auto'

export TERM=screen-256color

# Load local
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Up/Down keys will do prefix matching
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^[[A' history-beginning-search-backward-end
bindkey '^[OA' history-beginning-search-backward-end
bindkey '^[[B' history-beginning-search-forward-end
bindkey '^[OB' history-beginning-search-forward-end

# Share history across terminals
setopt inc_append_history
setopt share_history

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
