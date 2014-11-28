#!/bin/bash

xset b off
xset r rate 300 100
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export EDITOR='nano'
export GIT_EDITOR='nano'
export EVENT_NOKQUEUE=1
export HISTSIZE=1000
export PAGER='more'
export PS1='\[\033[01;34m\]\u\[\033[01;36m\][\t]\[\033[00m\]\[\033[00;34m\]`echo " [$?]"`\[\033[00m\] \[\033[32m\]`echo $(parse_git_branch)`\[\033[00m\] : \[\033[00;32m\]\w\[\033[00m\]\[\033[00;31m\] => \[\033[00m\]'
export SAVEHIST=1000
export WATCH='all'
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:$PATH
export JAVA_HOME=/usr/bin/java
alias ll='ls -l -G'
alias ls='ls -G'
alias la='ls -la -G'
alias j='jobs'
alias svo='svn co'
alias svi='svn ci'
alias svu='svn up'
alias sva='svn add'
alias gpt='gcc -W -Wall -Werror -ansi -pedantic'
alias detar='tar -xvjf'
alias g++='g++ -Wall -Wextra -std=c++98 -pedantic -Werror -pedantic-errors'
alias bz2='tar -cvjf'
alias clean='rm -rf *#'
alias gz='tar -cvzf'
alias emacs='emacs -nw'
alias ne='emacs -nw'
alias reload='source ~/.bashrc'

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto'
fi

alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lAhF'

#SF1
alias symload='./symfony doctrine:build --all --and-load --no-confirmation && ./symfony cc'
alias cc='./symfony cc'
alias sl='./symfony doctrine:build --all --and-load --no-confirmation && ./symfony cc'

#SF2
alias ccache='sudo rm -rf app/cache/* && ./app/console cache:clear && chmod 777 -R app/cache'

function myip {
  myip=`elinks -dump http://checkip.dyndns.org:8245/`
  echo "${myip}"
}

#Notify gnome alert when ;alert command
alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'
alias alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[$?] $(alert_helper)"'



clear
# Gotta love ASCII art with figlet
figlet "Welcome, " $USER;
echo -e ""
echo -ne "Today is "; date
echo -e ""; cal ;
echo -ne "Up time:";uptime | awk /'up/'
echo "";
