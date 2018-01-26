# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PATH=$PATH:~/Documents/GSFLOW_1.2.1/bin

# User specific aliases and functions
PS1='[\u@centos \W]\$ '

alias adsl="sudo /sbin/ifup ppp0 && exit"
alias jabref="java -jar /usr/share/java/JabRef-3.3.jar&"
alias di="cd ~/Documents/Dissertation && vi ~/Documents/Dissertation/todo_dissertation.org"
alias po="cd ~/PostDoc && vi postdoc_application.org"
