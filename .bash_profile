export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=3000

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/Developer/.rvm/scripts/rvm" ]] && source "$HOME/Developer/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME=`/usr/libexec/java_home`
export JRUBY_OPTS=--1.9

export EDITOR='mvim -p'

PATH=/usr/local/sbin:/usr/local/bin:$PATH
