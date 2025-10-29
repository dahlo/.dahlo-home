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



function gitcm(){
  git add -A ; git commit -am "$1" ; git pull ; git push
}



### HOST SPECIFIC ###
#if [[ `hostname -s` = dahlo-xps ]]; then

    # remap media keys (disable due to MATE)
    # xmodmap -e "keycode 78 = XF86AudioPlay"
    # xmodmap -e "keycode 180 = XF86AudioNext"

#fi

if [[ `hostname -s` = dahlo-xps ]]; then

    # remap media keys
     xmodmap -e "keycode 78 = XF86AudioPlay"
     xmodmap -e "keycode 127 = XF86AudioNext"

fi

# Add or modify these lines (add large numbers for effectively unlimited history):
export HISTSIZE=10000
export HISTFILESIZE=20000

# append to history file directly
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Ignore duplicate commands
export HISTCONTROL=ignoredups:erasedups

# Add timestamps to history
export HISTTIMEFORMAT="%F %T "

figlet-comment ()
{
    figlet $@ | awk '{print "# " $0}';
    echo "# $@"
}

# make it possible to print non-ascii in interactive python prompt
export PYTHONIOENCODING="UTF-8"


# save ssh key passwords for the session
#eval $(ssh-agent)

# fix ubisoft connect
ubisoft-connect-fix(){
    sudo sysctl net.ipv4.tcp_mtu_probing=1
}


mount_uppmax(){
    mount_point=${1:-/mnt/uppmax/}
    sshfs dahlo@rackham5.uppmax.uu.se:/ $mount_point
    
}

# Björns find
function f { find ${2:-.} -iname "*${1:?Missing search term}*" -ls; }


# start a qemu vm
start_vm ()
{

    # check if 2 argument is given
    if [ ! -z ${2+x} ]; 
    then 
        # a 2nd argument was given, use it as a cdrom
        cdrom="-cdrom $2"
    fi
    
    qemu-system-x86_64 $cdrom -drive "file=$1,format=qcow2" -enable-kvm -m 16G -smp 8 -cpu host ;

}




