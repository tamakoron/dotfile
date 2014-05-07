
#A# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
 alias ll='ls -l'                              # long list
 alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func
alias ls='ls --color=auto --show-control-char'
export HOME=/home/takuma
cd $HOME
alias eman='LANG=en_US LC_ALL=en_US /usr/bin/man'
alias gc='~/gc'
alias dast='~/dast-cyg'
# DISPLAY変数を指定する
if [ -n ${DISPLAY} ]; then
    export DISPLAY=:0.0
fi
# 日本語文字コードの指定
#export LANG=ja_JP.SJIS      #
#export CYGWIN=codepage:932  #この二つはtarに必要 source .bashrc で読込

#export LANG=ja_JP.UTF-8    ／／／／.bash_profile にかこうね
#export CYGWIN=codepage:utf8
#export LC_CTYPE=ja_JP.UTF-8
#下はいらないかも
#export OUTPUT_CHARSET=sjis
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias gccc='i686-w64-mingw32-gcc-4.5.3'
alias chrome='/cygdrive/c/Users/takuma/AppData/Local/Google/Chrome/Application/chrome.exe'



## emacsclient をシームレスに使うための関数
## http://k-ui.jp/?p=243
#function e(){
#    echo "[$0] emacsclient -c -t $*";
#    (emacsclient -c -t $* ||
#        (echo "[$0] emacs --daemon"; emacs --daemon &&
#            (echo "[$0] emacsclient -c -t $*"; emacsclient -c -t $*)) ||
#        (echo "[$0] emacs $*"; emacs $*))
#}
#
# ソケットの場所を環境変数に覚えてもらう
# emacs のバージョンによって少し場所が違うようなので、
# *** "/tmp" を要確認 *** 
export USER_ID=`id -u`
export EMACS_TMP_DIR="/tmp/emacs$USER_ID"
export EMACS_SOCK="$EMACS_TMP_DIR/server"

## screen emacsclient をシームレスに使うための関数
#function se(){
#    if which emacsclient &&
#        (echo "[$0] ls $EMACS_SOCK "; ls $EMACS_SOCK) ||
#        (echo "[$0] emacs --daemon"; emacs --daemon)
#    then
#        echo "[$0] screen -t emacs emacsclient -t -c $*";
#        screen -t emacs emacsclient -t -c $*
#    elif which emacs
#    then
#        echo "[$0] screen emacs -t -c $*";
#        screen emacs -t -c $*
#    fi
# 
#}

export PATH="/usr/bin:/bin:/usr/X11R6/bin:/usr/sbin:$PATH"
export PATH="/gunpack_emacs/emacs-24.2-20121208/bin:$PATH"
alias cat="cat | nkf -w"
alias e="emacsclient"
alias starte='emacs-nox --daemon'
LESSCHARSET=utf-8 ; export LESSCHARSET 

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  export PS1="\e[41m \e[0m\e[1;32m\@\e[0m\e[1;33m \w \e[0m\e[41m \e[0m\j\e[0m\e[1;35m \$(parse_git_branch)\e[0m\n\$>"
}
proml
alias j='~j'
alias E="SUDO_EDITOR=\"emacsclient\" sudo -e " 