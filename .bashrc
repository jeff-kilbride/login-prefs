# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -lFa'

# Be careful copying, moving, removing files
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# Better listing commands
alias less='less -eFgiJMNqwX -x4'
alias more=less
alias ll='ls -lFGah'
alias lm='ll | more'

# Recognize "more" typos
alias mroe=more
alias moer=more
alias mreo=more

# Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ll; }

# Quick directory movement
alias ..='cd ../'
alias ...='cd ../../'
alias ~='cd ~'

set -o vi

# Terminal prompt colors
black=$(tput -Txterm setaf 0)
red=$(tput -Txterm setaf 1)
green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
dk_blue=$(tput -Txterm setaf 4)
pink=$(tput -Txterm setaf 5)
lt_blue=$(tput -Txterm setaf 6)

bold=$(tput -Txterm bold)
reset=$(tput -Txterm sgr0)

# Nicely formatted terminal prompt
#export PS1='[ \D{%F %T} ] \u : \w $ '
export PS1='\n\[$black\][\[$red\]\D{%F %T}\[$black\]]-[\[$green\]\u\[$yellow\]@\[$green\]\h\[$black\]]-[\[$pink\]\w\[$black\]]\[$reset\]\n\[$reset\]\$ '

# Set iTerm2 tab titles
tabTitle() { echo -ne "\033]0;"$*"\007"; }
