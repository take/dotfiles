eval "$(starship init zsh)"

chpwd() ls -a -l

setopt auto_cd

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select

GOPATH=$HOME/go
PATH=$HOME/.nodenv/shims:$HOME/.rbenv/shims:$HOME/bin:$GOPATH/bin:$PATH:$HOME/.pub-cache/bin:$HOME/fvm/default/bin
EDITOR=nvim
export GOPATH
export PATH
export EDITOR
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESSCHARSET=UTF-8

alias lsa='ls -a -l'
alias vi=nvim
alias cdp='cd ~/projects'
alias viz='vi ~/.zshrc'
alias viv='vi ~/.config/nvim/init.vim'
alias be='bundle exec'
alias gha='github'

# emacs keybinding
bindkey -e

eval "$(direnv hook zsh)"
eval "$(nodenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/takehiro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/takehiro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/takehiro/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/takehiro/google-cloud-sdk/completion.zsh.inc'; fi


# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# To link Rubies to Homebrew's OpenSSL 11 (which is upgraded) add the following
# to your ~/zshrc:
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# https://github.com/rbenv/ruby-build/issues/1691#issuecomment-846429455
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# Activate zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
