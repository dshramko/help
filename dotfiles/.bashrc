# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias r='rails s -b 0.0.0.0'

# Mount VirtualBox shared folder
#sudo mount -t vboxsf -o uid=`id -u username`,gid=`getent group usergroup | cut -d: -f3` realfolder /home/username/mountfolder

# git highlighter
# looks like 
# (master)[user@hostname folder]$

RED="\[\033[0;91m\]"
NO_COLOR="\[\033[0m\]"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[$RED\$(parse_git_branch)$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
