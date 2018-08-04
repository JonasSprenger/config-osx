# fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/antigen/antigen.zsh
# source /Users/jsprenger/App/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# For Docker auto-completion
antigen bundle "greymd/docker-zsh-completion"

# Load the theme.
#antigen theme bira

# Tell Antigen that you're done.
antigen apply

source /Users/jsprenger/.antigen/perso/perso.zsh-theme

#fpath=(~/.zsh/completion $fpath)

#autoload -Uz compinit && compinit -i

# PATH
export PATH=/Users/jsprenger/Bin/confluent-4.1.1/bin:$PATH
export PATH=/Users/jsprenger/Bin/scala-2.12.6/bin:$PATH

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Aliases

## zsh
alias reload="source ~/.zshrc"

## cd
alias bd="/Users/jsprenger/Lizeo/Dev/BD4M/bd4m"
alias ref="/Users/jsprenger/Lizeo/Dev/BD4M/refsync"

## git
alias gs="git status"
alias gsho="git show"
alias gdf="git diff"
alias gdff="git diff --staged"
alias ga="git add"
alias gaa="git add  -u"
alias gl="git lola"
alias gll="git lol"
alias gp="git push"
alias gP="git push --force-with-lease"
alias gcaa="git commit --add --amend"
alias gc="git commit"
alias gco="git checkout"
#alisa shrug = !git add -A && git commit -m "¯\\_(ツ)_/¯"

## docker
alias d="docker"
alias dps="docker ps"
alias di="docker images"
alias drm="docker rm"
alias drmi="docker rmi"
alias drmal="docker rm $(docker ps -aq)"
alias drmall="docker rm $(docker ps -qf Status=exited)"
alias drmallI="docker rmi -f $(docker images -q)"
alias dinfo="docker inspect --format '{{\"ENV: \"}}{{join .Config.Env \" | \"}}{{\"\\nCMD: \"}}{{join .Config.Cmd \" | \"}}'"
