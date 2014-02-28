#!/usr/local/fish

set -U EDITOR "s"

# Path
test -f /usr/libexec/path_helper; and eval (/usr/libexec/path_helper -c)
set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
set PATH $HOME/.rvm/bin $HOME/bin $PATH
set -g CDPATH . ~/Codespace ~/Codespace/Assignments ~/Codespace/Hosted ~/Documents

# GitCafe ENV
set RAILS_ENV "development"
set GITCAFE_SERVER "localhost"
set HTTP_OR_HTTPS "http"
set MONGOID_HOST "localhost"
set MONGOID_DATABASE "git_cafe_development"

# Boost Ruby
set RUBY_GC_HEAP_INIT_SLOTS 1000000 # 1M
set RUBY_GC_HEAP_FREE_SLOTS 500000  # 0.5M
set RUBY_GC_HEAP_GROWTH_FACTOR 1.1
set RUBY_GC_HEAP_GROWTH_MAX_SLOTS 10000000 # 10M
set RUBY_GC_MALLOC_LIMIT_MAX 1000000000    # 1G
set RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR 1.1
# set RUBY_GC_OLDMALLOC_LIMIT 500000000      # 500M
# set RUBY_GC_OLDMALLOC_LIMIT_MAX 1000000000 # 1G
# set RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR 1.1


# Alias
alias l="ls -l"
alias la="ls -a"
alias ll="ls -al"

alias b='brew'
alias bup='brew update; and brew outdated; and brew upgrade; and brew cleanup'
alias g='git'
alias z="RAILS_ENV='' zeus"
alias e="emacs -nw"
alias et="emacsclient -t -a 'vim'"
alias ec="emacsclient -c --no-wait -a 'vim'"
alias gc='env -u RAILS_ENV bundle exec guard -c'
alias lt='listtask'
alias lk='listkill'

alias mp='mosh gitcafe@gitcafe.com'
alias ms='mosh gitcafe@gitcafe.staging'


# RVM init
rvm >/dev/null
