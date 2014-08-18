# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler rails rake ruby capistrano)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.llvm/bin:$PATH
export PATH=$HOME/.wp-cli/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

export EDITOR='vim'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# autojump
source /usr/share/autojump/autojump.sh

# dammit vim
alias mvim=gvim
alias open=xdg-open

# WP-CLI Bash completions
autoload bashcompinit
bashcompinit
source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash

# alias hub to git
eval "$(hub alias -s)"

# Todo.txt
export TODOTXT_DEFAULT_ACTION=ls
autoload bashcompinit
bashcompinit
source $HOME/.todo.txt/todo_completion
alias t="~/.todo.txt/todo.sh -d ~/.todo.txt/todo.cfg"

# Go lang
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Quick & dirty server command
alias serve="python -m SimpleHTTPServer"

# Adds Elastic Beanstalk `eb` command
export PATH=$PATH:$HOME/.eb_command/eb/linux/python2.7

# Adds the Ideum master key to the SSH keychain
ssh-add ~/.ec2/ideumwest.pem 2> /dev/null
