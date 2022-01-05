# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH=$(wslPathNorm -p "$PATH")

. "$HOME/.local/share/lscolors.sh"

# Add this line to use code-insiders instead of code
export VSCODE=code-insiders

# Configure color-scheme
COLOR_SCHEME=dark # dark/light

# --------------------------------- ALIASES -----------------------------------
alias jconsole='jupyter console'
alias jlab='jupyter lab'
alias gitcrd1='git clone --depth=1 --recursive'

alias nmake='make'
alias sound='aplay /usr/share/sounds/alsa/Front_Center.wav'
# color
alias ls='colorls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias pacman='pacman --color=auto'
alias ll='colorls -lah --sd --gs --report'
alias la='colorls -lah --sd'
alias l='colorls -laf --sd'
alias dir='lsd -laF --group-dirs=first --color=auto'
alias vdir='lsd -laF --group-dirs=first --color=auto'
alias p='pwd'
# other
alias ..='cd ..'
alias scss='scss --no-cache --quiet --sourcemap=none'
alias xclip='xclip -selection c'

source /etc/profile.d/grc.sh

# GRC="$(which grc)"
# if [ "$TERM" != dumb ] && [ -n "$GRC" ]; then
#     alias colourify="$GRC -es --colour=auto"
#     alias blkid='colourify blkid'
#     alias configure='colourify ./configure'
#     alias df='colourify df'
#     alias diff='colourify diff'
#     alias docker='colourify docker'
#     alias docker-machine='colourify docker-machine'
#     alias du='colourify du'
#     alias env='colourify env'
#     alias free='colourify free'
#     alias fdisk='colourify fdisk'
#     alias findmnt='colourify findmnt'
#     alias make='colourify make'
#     alias gcc='colourify gcc'
#     alias g++='colourify g++'
#     alias id='colourify id'
#     alias ip='colourify ip'
#     alias iptables='colourify iptables'
#     alias as='colourify as'
#     alias gas='colourify gas'
#     alias ld='colourify ld'
#     #alias ls='colourify ls'
#     alias lsof='colourify lsof'
#     alias lsblk='colourify lsblk'
#     alias lspci='colourify lspci'
#     alias netstat='colourify netstat'
#     alias ping='colourify ping'
#     alias traceroute='colourify traceroute'
#     alias traceroute6='colourify traceroute6'
#     alias head='colourify head'
#     alias tail='colourify tail'
#     alias dig='colourify dig'
#     alias mount='colourify mount'
#     alias ps='colourify ps'
#     alias mtr='colourify mtr'
#     alias semanage='colourify semanage'
#     alias getsebool='colourify getsebool'
#     alias ifconfig='colourify ifconfig'
# fi

# replace commands
command -v vim > /dev/null && alias vi='vim'
  # ls & tree
command -v lsd > /dev/null && alias ls='lsd --group-dirs first' && \
    alias tree='lsd --tree'
command -v colorls > /dev/null && alias ls='colorls --sd --gs' && \
    alias tree='colorls --tree'
  # cat & less
command -v bat > /dev/null && \
    alias bat='bat --theme=ansi-$([ "$COLOR_SCHEME" = "light" ] && echo "light" || echo "dark")' && \
    #alias cat='bat --pager=never' && \
    #alias less='bat'
  # top
#command -v htop > /dev/null && alias top='htop'
#command -v gotop > /dev/null && alias top='gotop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
#command -v ytop > /dev/null && alias top='ytop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
command -v bashtop > /dev/null && alias btop='bashtop' # themes for light/dark color-schemes inside ~/.config/bashtop; Press ESC to open the menu and change the theme

source $HOME/.config/broot/launcher/bash/br

export ANDROID_NDK_R10E=/home/dmitryk/ndk/android-ndk-r10e
export CQUERY_DIR="$HOME/cquery"

export PATH=~/.local/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=$HOME/Downloads/depot_tools:$PATH
#export PATH=$HOME/Downloads/jdk-11.0.7+10:$PATH
#export PATH=$HOME/Downloads/jdk-11.0.7+10/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.pyenv/bin:$PATH
export PATH=$CQUERY_DIR/build/release/bin:$PATH
export PATH=/usr/lib/w3m:$PATH
export PATH=/home/ubuntu/android-studio/bin:$PATH
# enable terminal linewrap
setterm -linewrap on

# colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-

# colorize less
export LESS=' -R '
export LESSOPEN='| pygmentize -g %s'
# export LESSOPEN="| pygmentize -g -f terminal256 %s"

shopt -s globstar
shopt -s histappend
shopt -s checkwinsize

HISTCONTROL=ignoreboth
HISTSIZE=5000
HISTFILESIZE=5000
HISTFILE="$HOME/.cache/bash_history"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# -------------------------------- PROMPT ---------------------------------

# *     ~ >>
#PS1=" \[\033[01;36m\]\w >\[\033[34m\]>\[\033[00m\] "

# *     ┌─────(daniruiz)─────(~)
# *     └> $
PS1="\n \[\033[0;34m\]┌─────(\[\033[1;35m\]\u\[\033[0;34m\])─────(\[\033[1;32m\]\w\[\033[0;34m\]) \n └> \[\033[1;36m\]\$ \[\033[0m\]"

# ----- Using patched fonts -----
OS_ICON=

# *     ╭─────  daniruiz ───── ~ 
# *     ╰ $
#PS1="\n \[\033[0;34m\]╭─────\[\033[0;31m\]\[\033[0;37m\]\[\033[41m\] $OS_ICON \u \[\033[0m\]\[\033[0;31m\]\[\033[0;34m\]─────\[\033[0;32m\]\[\033[0;30m\]\[\033[42m\] \w \[\033[0m\]\[\033[0;32m\] \n \[\033[0;34m\]╰ \[\033[1;36m\]\$ \[\033[0m\]"

# *  POWERLEVEL9K like
# *     ╭─  daniruiz  ~ 
# *     ╰ $
#PS1="\n \[\033[0;34m\]╭─\[\033[0;31m\]\[\033[0;37m\]\[\033[41m\] $OS_ICON \u \[\033[0m\]\[\033[0;31m\]\[\033[44m\]\[\033[0;34m\]\[\033[44m\]\[\033[0;30m\]\[\033[44m\] \w \[\033[0m\]\[\033[0;34m\] \n \[\033[0;34m\]╰ \[\033[1;36m\]\$ \[\033[0m\]"

# -------------------------------- FUNCTIONS ---------------------------------
lazygit() {
	USAGE="
lazygit [OPTION]... <msg>
    GIT but lazy
    Options:
        --fixup <commit>        runs 'git commit --fixup <commit> [...]'
        --amend                 runs 'git commit --amend --no-edit [...]'
        -f, --force             runs 'git push --force-with-lease [...]'
        -h, --help              show this help text
"
	COMMIT=''
	MESSAGE=''
	AMEND=0
	FORCE=0
	while [ $# -gt 0 ]
	do
		key="$1"

		case $key in
			--fixup)
				COMMIT="$2"
				shift # past argument
				shift # past value
				;;
			--amend)
				AMEND=1
				shift # past argument
				;;
			-f|--force)
				FORCE=1
				shift # past argument
				;;
			-h|--help)
				echo "$USAGE"
				return 0
				;;
			*)
				MESSAGE="$1"
				shift # past argument
				;;
		esac
	done
	git status .
	git add .
	if [ $AMEND -eq 1 ]
	then
		git commit --amend --no-edit
	elif [ "$COMMIT" != '' ]
	then
		git commit --fixup "$COMMIT"
		GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash "$COMMIT^"
	else
		git commit -m "$MESSAGE"
	fi
	git push origin HEAD $([ "$FORCE" -eq 1 ] && echo '--force-with-lease')
}

function find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}

# ----------------------------------- MISC -----------------------------------
# ----- Bash Completion -----
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

#source $(dirname $(gem which colorls))/tab_complete.sh

if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
#eval "$(pyenv virtualenv-init -)"
#pyenv shell 3.7.6

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#!/bin/bash
# Simple colorize for bash by means of sed
#
# Copyright 2008-2015 by Andreas Schamanek <andreas@schamanek.net>
#
# 2017 - Modified from mycolorize into a shell function 
#     by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
#
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage examples:
#   tail -f somemaillog | xcolorize white '^From: .*' bell
#   tail -f somemaillog | xcolorize white '^From: \/.*' green 'Folder: .*'
#   tail -f somemaillog | xcolorize --unbuffered white '^From: .*'
#
# Notes:
#   Regular expressions need to be suitable for _sed --regexp-extended_
#   Slashes / need no escaping (we use ^A as delimiter).
#   \/ splits the coloring (similar to procmailrc. Matches behind get color.
#   Even "white '(for|to) \/(her|him).*$'" works :) Surprisingly ;)
#   To color the string '\/' use the regular expression '\\()/'.
#   If the 1st argument is -u or --unbuffered, _sed_ will be run so.

# For the colors see tput(1) and terminfo(5), or e.g.
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# and http://stackoverflow.com/a/20983251/196133

function xcolorize()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local normal=$'\e[0m'                           # (works better sometimes)

  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local bell=$(tput bel)                          # bell/beep
  local y=0

  # Make output unbuffered? (Pass argument -u|--unbuffered to _sed_.)
  if [ "/$1/" = '/-u/' -o "/$1/" = '/--unbuffered/' ] ; then
    local UNBUFFERED='-u'; shift
  else
    local UNBUFFERED=""
  fi

  # produce separator character ^A (for _sed_)
  local A=$(echo | tr '\012' '\001')

  # compile all rules given at command line to 1 set of rules for SED
  while [ "/$1/" != '//' ] ; do
    local c1=''; local re='';  local beep=''
    c1=$1 ; re="$2" ; shift 2 || break
    # if a beep is requested in the optional 3rd parameter set $beep
    [ "/$1/" != '//' ] && [[ ( "$1" = 'bell' || "$1" = 'beep' ) ]] \
      && beep=$bell && shift
    # if the regular expression includes \/ we split the substitution
    if [ "/${re/*\\\/*/}/" = '//' ] ; then
      # we need to count "("s before the \/ (=$left)
      local left="${re%\\/*}"; local leftlength=${#left}
      # first we count "\("
      local dummy=${left//\\(}; escdgroups=$(( (leftlength-${#dummy})/2 ))
      # now "(" (and we add 2 for the groups used for ($re) in $sedrules)
      local dummy=${left//(}; groupcnt=$((leftlength-${#dummy}-escdgroups+2))
      # replace \/ with )( so below we get (left-re)(right-re)
      re="${re/\\\//)(}"
      local sedrules="$sedrules;s$A($re)$A\1${!c1}\\$groupcnt$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    else
      local sedrules="$sedrules;s$A($re)$A${!c1}\1$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    fi
    # limit parsing of arguments
    (( y++ && y>888 )) && { echo "$0: too many arguments" >&2; return 1; }
  done

  # call sed to do the main job
  sed $UNBUFFERED --regexp-extended -e "$sedrules"

  return
}

# Colorize your standard output using xcolorize with a grep-like usage
#
# Copyleft 2017 by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage piping from stdin:
#   mount | xcol mnt "sda." "sdb." cgroup tmpfs proc
#
# Usage reading from a file:
#   xcol pae fpu vme mhz sse2 cache cores /proc/cpuinfo
#
# Notes:
#   It supports sed compatible regular expressions
function xcol()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local COLS=( white yellow red cyan gray purple pink fawn )

  [ -t 0 ] && local STDIN=0 || local STDIN=1

  if [[ $STDIN == 0 ]]; then 
    local ARGVS=${@: 1 : $#-1 }                   # all arguments except last one
    local FILE=${@: -1}                           # last argument is the file name
  else
    local ARGVS=$@;
  fi

  local IDX=1                                     # rotate colors in a cycle
  for arg in ${ARGVS[@]}; do
    local ARGS=( ${ARGS[@]} ${COLS[$IDX]} $arg )
    IDX=$(( IDX + 1 )) 
    [[ $IDX == ${#COLS[@]} ]] && IDX=1
  done
  [[ $STDIN == 1 ]] && {
    xcolorize --unbuffered ${ARGS[@]}
    } || {
    cat $FILE | xcolorize --unbuffered ${ARGS[@]}
  }
}
# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA
#!/bin/bash
# Simple colorize for bash by means of sed
#
# Copyright 2008-2015 by Andreas Schamanek <andreas@schamanek.net>
#
# 2017 - Modified from mycolorize into a shell function 
#     by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
#
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage examples:
#   tail -f somemaillog | xcolorize white '^From: .*' bell
#   tail -f somemaillog | xcolorize white '^From: \/.*' green 'Folder: .*'
#   tail -f somemaillog | xcolorize --unbuffered white '^From: .*'
#
# Notes:
#   Regular expressions need to be suitable for _sed --regexp-extended_
#   Slashes / need no escaping (we use ^A as delimiter).
#   \/ splits the coloring (similar to procmailrc. Matches behind get color.
#   Even "white '(for|to) \/(her|him).*$'" works :) Surprisingly ;)
#   To color the string '\/' use the regular expression '\\()/'.
#   If the 1st argument is -u or --unbuffered, _sed_ will be run so.

# For the colors see tput(1) and terminfo(5), or e.g.
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# and http://stackoverflow.com/a/20983251/196133

function xcolorize()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local normal=$'\e[0m'                           # (works better sometimes)

  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local bell=$(tput bel)                          # bell/beep
  local y=0

  # Make output unbuffered? (Pass argument -u|--unbuffered to _sed_.)
  if [ "/$1/" = '/-u/' -o "/$1/" = '/--unbuffered/' ] ; then
    local UNBUFFERED='-u'; shift
  else
    local UNBUFFERED=""
  fi

  # produce separator character ^A (for _sed_)
  local A=$(echo | tr '\012' '\001')

  # compile all rules given at command line to 1 set of rules for SED
  while [ "/$1/" != '//' ] ; do
    local c1=''; local re='';  local beep=''
    c1=$1 ; re="$2" ; shift 2 || break
    # if a beep is requested in the optional 3rd parameter set $beep
    [ "/$1/" != '//' ] && [[ ( "$1" = 'bell' || "$1" = 'beep' ) ]] \
      && beep=$bell && shift
    # if the regular expression includes \/ we split the substitution
    if [ "/${re/*\\\/*/}/" = '//' ] ; then
      # we need to count "("s before the \/ (=$left)
      local left="${re%\\/*}"; local leftlength=${#left}
      # first we count "\("
      local dummy=${left//\\(}; escdgroups=$(( (leftlength-${#dummy})/2 ))
      # now "(" (and we add 2 for the groups used for ($re) in $sedrules)
      local dummy=${left//(}; groupcnt=$((leftlength-${#dummy}-escdgroups+2))
      # replace \/ with )( so below we get (left-re)(right-re)
      re="${re/\\\//)(}"
      local sedrules="$sedrules;s$A($re)$A\1${!c1}\\$groupcnt$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    else
      local sedrules="$sedrules;s$A($re)$A${!c1}\1$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    fi
    # limit parsing of arguments
    (( y++ && y>888 )) && { echo "$0: too many arguments" >&2; return 1; }
  done

  # call sed to do the main job
  sed $UNBUFFERED --regexp-extended -e "$sedrules"

  return
}

# Colorize your standard output using xcolorize with a grep-like usage
#
# Copyleft 2017 by Ignacio Nunez Hernanz <nacho _a_t_ ownyourbits _d_o_t_ com>
# GPL licensed (see end of file) * Use at your own risk!
#
# Usage piping from stdin:
#   mount | xcol mnt "sda." "sdb." cgroup tmpfs proc
#
# Usage reading from a file:
#   xcol pae fpu vme mhz sse2 cache cores /proc/cpuinfo
#
# Notes:
#   It supports sed compatible regular expressions
function xcol()
{
  local bold=$(tput bold)                         # make colors bold/bright
  local red="$bold$(tput setaf 1)"                # bright red text
  local green=$(tput setaf 2)                     # dim green text
  local fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
  local yellow="$bold$fawn"                       # bright yellow text
  local darkblue=$(tput setaf 4)                  # dim blue text
  local blue="$bold$darkblue"                     # bright blue text
  local purple=$(tput setaf 5); magenta="$purple" # magenta text
  local pink="$bold$purple"                       # bright magenta text
  local darkcyan=$(tput setaf 6)                  # dim cyan text
  local cyan="$bold$darkcyan"                     # bright cyan text
  local gray=$(tput setaf 7)                      # dim white text
  local darkgray="$bold"$(tput setaf 0)           # bold black = dark gray text
  local white="$bold$gray"                        # bright white text

  local COLS=( white yellow red cyan gray purple pink fawn )

  [ -t 0 ] && local STDIN=0 || local STDIN=1

  if [[ $STDIN == 0 ]]; then 
    local ARGVS=${@: 1 : $#-1 }                   # all arguments except last one
    local FILE=${@: -1}                           # last argument is the file name
  else
    local ARGVS=$@;
  fi

  local IDX=1                                     # rotate colors in a cycle
  for arg in ${ARGVS[@]}; do
    local ARGS=( ${ARGS[@]} ${COLS[$IDX]} $arg )
    IDX=$(( IDX + 1 )) 
    [[ $IDX == ${#COLS[@]} ]] && IDX=1
  done
  [[ $STDIN == 1 ]] && {
    xcolorize --unbuffered ${ARGS[@]}
    } || {
    cat $FILE | xcolorize --unbuffered ${ARGS[@]}
  }
}
# License
#
# This script is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this script; if not, write to the
# Free Software Foundation, Inc., 59 Temple Place, Suite 330,
# Boston, MA  02111-1307  USA

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.rvm/gems/ruby-3.0.0/bin:$PATH"
#export PATH="$PATH:$HOME/.rvm/bin"
#source $HOME/.rvm/scripts/rvm
#export rvmsudo_secure_path=0
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
eval "$(zoxide init bash)"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.rbenv/versions/3.0.2/lib
export JAVA_HOME=$(update-alternatives --query java | grep Value | cut -d" " -f2 | sed 's!\(\/.*\)bin\(.*\)!\1!g')
export JAVA_BIN=${JAVA_HOME}/bin
export JDK_HOME=${JAVA_HOME}
export JRE_HOME=${JDK_HOME}
export PATH="$PATH:$JAVA_BIN"
export PATH=$PATH:/snap/bin
export PATH=$PATH:/usr/local/go/bin
export HOST_IP="$(ip route |awk '/^default/{print $3}')"
export PULSE_SERVER="tcp:$HOST_IP"
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export LIBGL_ALWAYS_INDIRECT=1
export NO_AT_BRIDGE=1
export DONT_PROMPT_WSL_INSTALL=1
source $(dirname $(gem which colorls))/tab_complete.sh

export PATH=$(wslPathNorm -p "$PATH")
