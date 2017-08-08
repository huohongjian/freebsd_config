# This file located in /etc/csh.cshrc

# $FreeBSD: releng/10.2/etc/csh.cshrc 50472 1999-08-27 23:37:10Z peter $
#
# System-wide .cshrc file for csh(1).

# setenv LC_ALL "zh_CN.UTF-8"

bindkey '\e[1~' beginning-of-line	# Home
bindkey '\e[3~' delete-char		# Delete
bindkey '\e[4~' end-of-line		# End
bindkey "^W" backward-delete-word	# Delete
bindkey -k up history-search-backward	# PageUp
bindkey -k down history-search-forward	# PageDown

setenv PACKAGEROOT ftp://ftp.freebsdchina.org
setenv LSCOLORS ExGxFxDxCxegedabagExEx
setenv CLICOLOR yes
setenv GREP_OPTIONS --color=auto

set noclobber
set autolist
set correct = cmd

alias e 'python2.7 /home/stock/stock/main.py'
alias stock 'e'
alias monitor 'python2.7 /home/stock/stock/monitor.py'
alias m 'monitor'

alias mv 'mv -i'
alias cp 'cp -i'
alias rm 'rm -i'
alias x 'startx'
alias l 'ls -lF'
alias lll 'll | less'
alias amu 'mount_msdosfs -L zh_CN.UTF-8 /dev/da0s1 /mnt/u'
alias - 'mixer -s vol -1'
alias + 'mixer -s vol +1'
alias -- 'mixer -s vol -3'
alias ++ 'mixer -s vol +3'
alias p 'ping -t 3 www.sohu.com'

