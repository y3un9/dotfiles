export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ls='ls --color'
alias ll='ls -l'
alias rm='rm -i'

# zsh prompt
#export PS1="%n@%m %1~ %# "
#export PS1="%F{green}%n@%m%f %F{cyan}%~%f %# "

# bash prompt
export PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '

export EDITOR='vim'
export CLICOLOR=1

export HISTTIMEFORMAT='%F %T  '

#export PATH=$PATH:$HOME/Library/Python/3.10/bin

# Lines below can turn on feature of shell bindings for "vcs.branch" on tmux powerline status, but it will also change the prompt to powerline style. But by setting "~/.config/powerline/config.json" ext.shell.components='tmux' can tmux powerline bindings without changing shell prompt.
#powerline-daemon -q
#. /Users/yeung/Library/Python/3.10/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Flutter
export PATH=$PATH:$HOME/Developers/flutter/bin

# Proxy
export http_proxy=http://127.0.0.1:1087;
export https_proxy=http://127.0.0.1:1087;
export ALL_PROXY=socks5://127.0.0.1:1080;
