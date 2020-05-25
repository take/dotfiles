# tmux-powerline settings
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"
# ZSH_THEME="random"

# auto ls after cd
setopt auto_cd

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

GOPATH=$HOME/go
PATH=$HOME/.nodenv/shims:$HOME/.rbenv/shims:$HOME/bin:$GOPATH/bin:$PATH
EDITOR=nvim
export GOPATH
export PATH
export EDITOR
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESSCHARSET=UTF-8

alias cdp='cd ~/projects'
alias vi='nvim'
alias viz='vi ~/.zshrc'
alias viv='vi ~/.config/nvim/init.vim'
alias be='bundle exec'
alias gha='github'

# alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'

# tmuxintor
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Set auto correct off
DISABLE_CORRECTION='true'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS='true'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

REPORTTIME=3

# completion
_mux() {
  compadd `mux list|grep -v "tmuxinator" | sed -e 's/^[ \t]*//'`
}

chpwd() {
    lsa
}

compdef _mux mux

# emacs keybinding
bindkey -e

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
