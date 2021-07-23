# Path to your oh-my-zsh installation
export ZSH="/Users/ryan/.oh-my-zsh"
ZSH_THEME="robbyrussell"

ZSH_DISABLE_COMPFIX=true

plugins=(git)

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

# Add bash aliases
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi

# Add bin to path
if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

export PATH="/usr/local/Cellar/ruby/3.0.1/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1


norm="$(printf '\033[0m')" #returns to "normal"
bold="$(printf '\033[0;1m')" #set bold
red="$(printf '\033[0;31m')" #set red
boldyellowonblue="$(printf '\033[0;1;33;44m')"
boldyellow="$(printf '\033[0;1;33m')"
boldred="$(printf '\033[0;1;31m')" #set bold, and set red.

copython() {
        python $@ 2>&1 | sed -e "s/Traceback/${boldyellowonblue}&${norm}/g" \
        -e "s/File \".*\.py\".*$/${boldyellow}&${norm}/g" \
        -e "s/\, line [[:digit:]]\+/${boldred}&${norm}/g"
    }
