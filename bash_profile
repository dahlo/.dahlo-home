#!/bin/bash

### ALIAS ###
alias l='ls -lh --color --group-directories-first'
alias ll='ls -lah --color --group-directories-first'
alias grep='grep --color'
alias fan='sudo $(history -p \!\!)'

### PS1 ###
if [[ ${EUID} == 0 ]] ; then
    PS1='i\[\033[01;34m\][\t] ${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\[\033[01;34m\][\t] ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
fi
unset color_prompt force_color_prompt



# misc alias
alias tailmail='tail -n 1000 /var/mail/$USER | less -S'


# load ssh aliases, will have to decrypt the file first ($ gpg ssh_aliases.gpg)
if [ -f ~/.dahlo-home/ssh_aliases ]; then
    . ~/.dahlo-home/ssh_aliases
fi



### HOST SPECIFIC ###
#if [[ `hostname -s` = dahlo-xps ]]; then

    # remap media keys (disable due to MATE)
    # xmodmap -e "keycode 78 = XF86AudioPlay"
    # xmodmap -e "keycode 127 = XF86AudioNext"

#fi
