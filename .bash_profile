export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=3000
export EDITOR='mvim -p'

PATH=/usr/local/sbin:/usr/local/bin:$PATH

# java
export JAVA_HOME=`/usr/libexec/java_home`

# ruby

# jruby
export JRUBY_OPTS=--1.9

# python
#export PATH=/usr/local/share/python:$PATH
#export WORKON_HOME=~/.python-envs/
#source /usr/local/share/python/virtualenvwrapper.sh

# android
export PATH=~/Code/android-sdk/platform-tools:$PATH

# npm
export PATH=/usr/local/share/npm/bin:$PATH

# go
export GOPATH=~/Code/learning/go

# powerline
#. ~/.vim/bundle/powerline/powerline/bindings/bash/powerline.sh

# Mou.app
alias mou='open -a Mou.app'

# PostgreSQL
alias psql='postgres -D /usr/local/var/postgres &'

# z
. `brew --prefix`/etc/profile.d/z.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# simple find
alias where='find . -name'

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks
function j {
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark {
    rm -i "$MARKPATH/$1"
}
function marks {
    \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}
