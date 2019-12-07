# template
# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH="/home/rsoares/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git jump nvm go rvm)

source $ZSH/oh-my-zsh.sh

alias j="jump"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias 2mirror='xrandr --output eDP-1 --below HDMI-1 --output HDMI-1 --output DP-2 --same-as HDMI-1'
alias 3mirror='xrandr --output eDP-1 --output HDMI-1 --same-as eDP-1 --output DP-2 --same-as eDP-1'
alias tpaste="tmate display -p '#{tmate_ssh}'"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add local binaries
export PATH=$HOME/.local/bin:$PATH

# Add go binaries
export PATH=$HOME/go/bin:$PATH
