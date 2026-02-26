#!/opt/homebrew/bin/fish

# Replacement
alias ls="eza"
alias cat="bat"
alias find="fd"
# alias grep="rg"
alias diff="delta"

# System Alias
alias l="ls -lah"
alias la="ls -ah"
alias ll="ls -lah"
#alias cp='cp -i'
#alias mv='mv -i'
#alias rm='rm -i'

# Custom alias
alias cc='NPM_CONFIG_REGISTRY="https://registry.npmjs.org" npx @anthropic-ai/claude-code --setting-sources "project,local"'
alias lp='listport'
alias lt='listtask'
alias lk='listkill'
alias b='brew'
alias bup="brew update && brew outdated && brew upgrade && brew cleanup"
alias up='configs_upgrade && bup'
alias g='git'
alias sha1="shasum -a 1"
alias sha256="shasum -a 256"
# alias record="ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /tmp/out.mpg"
# alias jarsignature="jarsigner -verify -verbose -certs"
# alias apksignature="~/Android/Sdk/build-tools/30.0.1/apksigner verify --print-certs"
alias httpserver='python3 -m http.server'

if [ -f $HOME/.iterm2_shell_integration.fish ]; source $HOME/.iterm2_shell_integration.fish; end

if [ -f $HOME/work/bin/config.fish ]; source $HOME/work/bin/config.fish; end
