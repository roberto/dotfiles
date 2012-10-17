export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=3000

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PGHOST=localhost
export PGUSER=matterhorn

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME=`/usr/libexec/java_home`
export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=512m -Dfile.encoding=UTF-8 -Dserver.port=8081"
export JRUBY_OPTS=--1.9

PATH=$PATH:/usr/local/sbin
