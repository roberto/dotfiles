export LC_CTYPE="en_US.UTF-8"
export HISTFILESIZE=3000

export JAVA_HOME=`/usr/libexec/java_home`
export JRUBY_OPTS=--1.9

export EDITOR='mvim -p'

PATH=/usr/local/sbin:/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function keepcoding {
  git status --porcelain --ignore-submodules | awk '$1 != "D" { print $2}' | xargs $EDITOR
}
