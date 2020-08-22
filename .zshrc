# fpath=(/usr/local/share/zsh-completions $fpath)
 source /usr/local/share/antigen/antigen.zsh # COMMENTED
# source /Users/jsprenger/App/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh # COMMENTED

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# For Docker auto-completion
antigen bundle "greymd/docker-zsh-completion"

# Load the theme.
antigen theme bira

# Tell Antigen that you're done.
antigen apply

source /Users/jsprenger/.antigen/perso/perso.zsh-theme

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

# PATH
export PATH=/Users/jsprenger/Bin/confluent-4.1.1/bin:$PATH
export PATH=/Users/jsprenger/Bin/scala-2.12.6/bin:$PATH


# Fuckin env JS
  export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Aliases

## zsh
alias reload="source ~/.zshrc"

## cd
alias bd="/Users/jsprenger/Lizeo/Dev/BD4M/bd4m"
alias ref="/Users/jsprenger/Lizeo/Dev/BD4M/refsync"
alias xca="/Users/jsprenger/Perso/Dev/XCA_MVP/xca"

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
alias gpUp="git push --set-upstream origin HEAD"
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

## Python lib for AWS
export PATH=/Users/jsprenger/Library/Python/2.7/bin:$PATH

### NPM ###
export PATH=/usr/local/Cellar/node/10.8.0/libexec/bin:$PATH

export PATH=/Users/jsprenger/.local/bin:$PATH

### JVM ###
export PATH="$HOME/.jenv/bin:$PATH"

# pyenv
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.poetry/bin:$PATH"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
