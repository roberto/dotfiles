export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=3000
export EDITOR='mvim -p'

PATH=/usr/local/sbin:/usr/local/bin:$PATH

# java
export JAVA_HOME=`/usr/libexec/java_home`

# ruby
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# jruby
export JRUBY_OPTS=--1.9

# python
export PATH=/usr/local/share/python:$PATH
export WORKON_HOME=~/.python-envs/
source /usr/local/share/python/virtualenvwrapper.sh

# git
function keepcoding {
  git status --porcelain --ignore-submodules | awk '$1 != "D" { print $2}' | xargs $EDITOR
}
