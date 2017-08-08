export PS1="\u@\W $ "  

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PATH="$HOME/bin:$PATH"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export EDITOR="/usr/bin/nano"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
