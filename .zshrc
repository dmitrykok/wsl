# echo $PATH
export PATH=$(wslPathNorm -p "$PATH")

source ~/zsh-snap/zsh-snap/znap.zsh
export CW_CHK_NOCOLOR='if [ "`whoami`" = "ubuntu" ];then exit 1;fi'
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath=($HOME/Downloads/depot_tools/zsh-goodies $fpath)

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
. "$HOME/.local/share/lscolors.sh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

#POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir status)

POWERLEVEL9K_OS_ICON_BACKGROUND=024 #navyblue
POWERLEVEL9K_OS_ICON_FOREGROUND=202 #orangered1
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=249 # white
POWERLEVEL9K_DIR_HOME_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=249
POWERLEVEL9K_DIR_ETC_FOREGROUND=249
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_ETC_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_HOME_ICON=''
#POWERLEVEL9K_HOME_SUB_ICON=' '
#POWERLEVEL9K_HOME_SUB_ICON="\uF115 "
#POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_BACKGROUND=027
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=027

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)

POWERLEVEL9K_VCS_CLEAN_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=040 # green3a
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=220 # gold1
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=236 #grey19
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=160 #red3a
POWERLEVEL9K_SHOW_CHANGESET=true


# Fix icon widths
#POWERLEVEL9K_HOME_SUB_ICON="\uE18D "
POWERLEVEL9K_AWS_ICON="\uF270 "
POWERLEVEL9K_TEST_ICON="\uF188 "
POWERLEVEL9K_TODO_ICON="\uF133 "
POWERLEVEL9K_DISK_ICON="\uF0A0 "
POWERLEVEL9K_OK_ICON="\uF00C "
POWERLEVEL9K_SYMFONY_ICON="\uE757 "
POWERLEVEL9K_APPLE_ICON="\uF179 "
POWERLEVEL9K_WINDOWS_ICON="\uF17A "
POWERLEVEL9K_ANDROID_ICON="\uF17B "
POWERLEVEL9K_LINUX_ICON="\uF17C "
POWERLEVEL9K_HOME_ICON="\uF015 "
POWERLEVEL9K_HOME_SUB_ICON="\uF07C "
POWERLEVEL9K_FOLDER_ICON="\uF115 "
POWERLEVEL9K_NETWORK_ICON="\uF1EB "
POWERLEVEL9K_SWAP_ICON="\uF464 "
#POWERLEVEL9K_RAM_ICON="\uF0E4 "
POWERLEVEL9K_SERVER_ICON="\uF0AE "
POWERLEVEL9K_VCS_UNTRACKED_ICON="\uF059 "
POWERLEVEL9K_VCS_UNSTAGED_ICON="\uF06A "
POWERLEVEL9K_VCS_STAGED_ICON="\uF055 "
POWERLEVEL9K_SWIFT_ICON="\uE755 "
POWERLEVEL9K_PUBLIC_IP_ICON="\UF0AC "
POWERLEVEL9K_EXECUTION_TIME_ICON="\uF252 "
POWERLEVEL9K_SSH_ICON="\uF489 "


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Add this line to use code-insiders instead of code
export VSCODE=code-insiders

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions autojump command-not-found brew colorize zsh_reload safe-paste pip debian emoji-clock bgnotify docker sudo vscode cargo emoji per-directory-history ubuntu adb zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# source $HOME/zsh-snap/install.zsh
# source $HOME/Downloads/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Configure color-scheme
COLOR_SCHEME=dark # dark/light
source /etc/grc.zsh

# --------------------------------- ALIASES -----------------------------------
# replace commands
command -v vim > /dev/null && alias vi='vim'
if type vim &>/dev/null ; then
    alias vi='vim'
fi
  # ls & tree
command -v lsd > /dev/null && alias lsd='lsd --group-dirs first' && \
    alias vtree='lsd --tree'
if type lsd &>/dev/null ; then
    alias lsd='lsd --group-dirs first'
    alias vtree='lsd --tree -aF --group-dirs=first --color=auto'
    alias dir='lsd -laF --group-dirs=first --color=auto'
    alias vdir='lsd -laF --group-dirs=first --color=auto'
fi
command -v colorls > /dev/null && alias ls='colorls --sd --gs' && \
    alias tree='colorls -lah --gs --sd --tree'
if type colorls &>/dev/null ; then
    alias ls='colorls --sd --gs'
    alias tree='colorls -lah --sd --tree'
    alias ll='colorls -lah --sd --gs --report'
    alias la='colorls -lah --sd'
    alias l='colorls -laf --sd'
    #alias ls='colorls --color=auto'
fi
  # cat & less
command -v bat > /dev/null && \
    alias bat='bat --theme=ansi-$([ "$COLOR_SCHEME" = "light" ] && echo "light" || echo "dark")'
    #alias bat='bat --theme=ansi-$([ "$COLOR_SCHEME" = "light" ] && echo "light" || echo "dark")' && \
    alias bcat='bat --pager=never'
    alias bless='bat'
if type bat &>/dev/null ; then
    alias bat='bat --theme=ansi-$([ "$COLOR_SCHEME" = "light" ] && echo "light" || echo "dark")'
fi

# top
#command -v htop > /dev/null && alias top='htop'

command -v gotop > /dev/null && alias gotop='gotop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
if type gotop &>/dev/null ; then
  alias gotop='gotop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
fi

command -v ytop > /dev/null && alias top='ytop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
if type ytop &>/dev/null ; then
  alias top='ytop -p $([ "$COLOR_SCHEME" = "light" ] && echo "-c default-dark")'
fi

command -v bashtop > /dev/null && alias btop='$HOME/.local/bin/run-pashtop.sh' # themes for light/dark color-schemes inside ~/.config/bashtop; Press ESC to open the menu and change the theme
if type bashtop &>/dev/null ; then
    alias btop='$HOME/.local/bin/run-pashtop.sh'
fi

# if colordiff is installed, use it
command -v colordiff > /dev/null && alias diff='colordiff'
if type colordiff &>/dev/null ; then
    alias diff='colordiff'
fi

command -v exa > /dev/null && alias edir='exa --icons -la --group-directories-first -h --git --extended -g -H -b' && \
alias etree='exa --icons -la --group-directories-first -h --git --extended -g -H -b -T'
if type exa &>/dev/null ; then
    alias edir='exa --icons -la --group-directories-first -h --git --extended -g -H -b'
    alias etree='exa --icons -la --group-directories-first -h --git --extended -g -H -b -T'
fi

alias jconsole='jupyter console'
alias jlab='jupyter lab'
alias gitcrd1='git clone --depth=1 --recursive'
alias less='colorize_less'
alias cat='colorize_cat'

alias nmake='make'
alias sound='aplay /usr/share/sounds/alsa/Front_Center.wav'
# color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# alias diff='diff --color=auto'
alias pacman='pacman --color=auto'
alias p='pwd'
# other
alias ..='cd ..'
alias scss='scss --no-cache --quiet --sourcemap=none'
alias xclip='xclip -selection c'
alias scat='src-hilite-lesspipe.sh'
alias cpuinfo='xcol fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext cache cores amd /proc/cpuinfo'
alias lspci='lspci | xcol audio vga pci usb amd ati hdmi ethernet radeon amd intel'
alias cccat='/home/linuxbrew/.linuxbrew/bin/ccat'

# #grc/grc.zsh
# if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then

#   # Supported commands
#   cmds=(
#     cc \
#     configure \
#     cvs \
#     df \
#     diff \
#     dig \
#     gcc \
#     gmake \
#     ifconfig \
#     last \
#     ldap \
#     ls \
#     make \
#     mount \
#     mtr \
#     netstat \
#     ping \
#     ping6 \
#     ps \
#     traceroute \
#     traceroute6 \
#     wdiff \
#     whois \
#     iwconfig \
#   );

#   # Set alias for available commands.
#   for cmd in $cmds ; do
#     if (( $+commands[$cmd] )) ; then
#       alias $cmd="grc --colour=auto $(whence $cmd)"
#     fi
#   done

#   # Clean up variables
#   unset cmds cmd
# fi

source $HOME/.config/broot/launcher/bash/br

export ANDROID_NDK_R10E=$HOME/ndk/android-ndk-r10e
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
export PATH=/usr/local/lib/cw:$PATH
export PATH=$PATH:/usr/local/share/perl/5.30.0/auto/share/dist/Cope

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
#export LESS=' -R '
#export LESSOPEN='| pygmentize -g %s'
# export LESSOPEN="| pygmentize -g -f terminal256 %s"

# ------------------------------- ZSH SETTINGS --------------------------------
# ----- options -----
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST
setopt NULL_GLOB

HISTFILE="$HOME/.cache/zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZLE_RPROMPT_INDENT=1

# ----- keys -----
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history


# ----- promt -----
PS1="%F{cyan} %~ >%F{blue}> %F{reset}"

# -------------------------------- POWERLEVEL ---------------------------------

s=' ' # fix too wide icons
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_beginning
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='${P9K_CONTENT} $(whoami | grep -v "^root\$")'
POWERLEVEL9K_OS_ICON_BACKGROUND=red
POWERLEVEL9K_OS_ICON_FOREGROUND=white
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=235
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=red
POWERLEVEL9K_SSH_BACKGROUND=white
POWERLEVEL9K_SSH_FOREGROUND=blue
#POWERLEVEL9K_FOLDER_ICON=
POWERLEVEL9K_DIR_BACKGROUND=blue
POWERLEVEL9K_DIR_FOREGROUND=black
POWERLEVEL9K_DIR_WRITABLE_BACKGROUND=235
POWERLEVEL9K_DIR_WRITABLE_FOREGROUND=red
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=black
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=green
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=black
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=yellow
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=white
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=235
#POWERLEVEL9K_VCS_UNTRACKED_ICON=●
#POWERLEVEL9K_VCS_UNSTAGED_ICON=±
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=↓
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=↑
POWERLEVEL9K_VCS_COMMIT_ICON=$s
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
#POWERLEVEL9K_EXECUTION_TIME_ICON=$s
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=235
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=white
POWERLEVEL9K_COMMAND_BACKGROUND_JOBS_BACKGROUND=235
POWERLEVEL9K_COMMAND_BACKGROUND_JOBS_FOREGROUND=cyan
POWERLEVEL9K_TIME_ICON=
POWERLEVEL9K_TIME_FORMAT='%D{%I:%M}'
POWERLEVEL9K_TIME_BACKGROUND=235
POWERLEVEL9K_TIME_FOREGROUND=white
POWERLEVEL9K_RAM_ICON=
POWERLEVEL9K_RAM_FOREGROUND=black
POWERLEVEL9K_RAM_BACKGROUND=yellow
POWERLEVEL9K_VI_MODE_FOREGROUND=black
POWERLEVEL9K_VI_COMMAND_MODE_STRING=NORMAL
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND=green
POWERLEVEL9K_VI_VISUAL_MODE_STRING=VISUAL
POWERLEVEL9K_VI_MODE_VISUAL_BACKGROUND=blue
POWERLEVEL9K_VI_OVERWRITE_MODE_STRING=OVERTYPE
POWERLEVEL9K_VI_MODE_OVERWRITE_BACKGROUND=red
POWERLEVEL9K_VI_INSERT_MODE_STRING=
POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL='\uE0B2'
POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL='\uE0B0'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{blue}╭─'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{blue}╰%f '
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ssh dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status command_execution_time background_jobs time ram)


POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C0 '
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C2 '

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

#glog() {
#	setterm -linewrap off
#
#	git --no-pager log --all --color=always --graph --abbrev-commit --decorate \
#	--format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' | \
#		sed -E \
#		-e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+ /├\1─╮\2/' \
#		-e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m /\1├─╯\x1b\[m/' \
#		-e 's/\|(\x1b\[[0-9;]*m)+\\(\x1b\[[0-9;]*m)+/├\1╮\2/' \
#		-e 's/(\x1b\[[0-9;]+m)\|\x1b\[m\1\/\x1b\[m/\1├╯\x1b\[m/' \
#		-e 's/╮(\x1b\[[0-9;]*m)+\\/╮\1╰╮/' \
#		-e 's/╯(\x1b\[[0-9;]*m)+\//╯\1╭╯/' \
#		-e 's/(\||\\)\x1b\[m   (\x1b\[[0-9;]*m)/╰╮\2/' \
#		-e 's/(\x1b\[[0-9;]*m)\\/\1╮/g' \
#		-e 's/(\x1b\[[0-9;]*m)\//\1╯/g' \
#		-e 's/^\*|(\x1b\[m )\*/\1⎬/g' \
#		-e 's/(\x1b\[[0-9;]*m)\|/\1│/g' \
#		| command less -r +'/[^/]HEAD'
#
#	setterm -linewrap on
#}

find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#export PATH="$PATH:$HOME/.rvm/bin"
#source $HOME/.rvm/scripts/rvm
#source /usr/local/rvm/scripts/rvm
#export rvmsudo_secure_path=0
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
#export PATH="$HOME/.rvm/gems/ruby-3.0.0/bin:$HOME/.rvm/bin:$PATH"
export PATH="$HOME/.rvm/gems/ruby-3.0.0/bin:$PATH"
source $(dirname $(gem which colorls))/tab_complete.sh

if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
	#pyenv shell 3.7.6
fi

eval "$(register-python-argcomplete pipx)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LD_LIBRARY_PATH=/usr/local/lib

#!/bin/zsh
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
      local sedrules="$sedrules;s$A($re)$A\1${(P)c1}\\$groupcnt$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    else
      local sedrules="$sedrules;s$A($re)$A${(P)c1}\1$beep$normal${A}g"
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
    local FILE=$argv[$#];                         # last argument is the file name
    argv[$#]=()                                   # remove last argument
  fi

  local IDX=0                                     # rotate colors in a cycle
  for arg in $argv[@]; do
    local ARGS=( ${ARGS[@]} ${COLS[$IDX]} $arg )
    IDX=$(( IDX + 1 ))
    [[ $IDX == ${#COLS[@]} ]] && IDX=0
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


# export CW_CHK_NOCOLOR='if [ "`whoami`" = "ubuntu" ];then exit 0;fi' -> enable CW
# export CW_CHK_NOCOLOR='if [ "`whoami`" = "ubuntu" ];then exit 1;fi' -> disable CW

zsh_reload() {
  export CW_CHK_NOCOLOR='if [ "`whoami`" = "ubuntu" ];then exit 1;fi'
	local cache="$ZSH_CACHE_DIR"
	autoload -U compinit zrecompile
	compinit -i -d "$cache/zcomp-$HOST"

	for f in ${ZDOTDIR:-~}/.zshrc "$cache/zcomp-$HOST"; do
		zrecompile -p $f && command rm -f $f.zwc.old
	done

	# Use $SHELL if it's available and a zsh shell
	local shell="$ZSH_ARGZERO"
	if [[ "${${SHELL:t}#-}" = zsh ]]; then
		shell="$SHELL"
	fi

	# Remove leading dash if login shell and run accordingly
	if [[ "${shell:0:1}" = "-" ]]; then
		exec -l "${shell#-}"
	else
		exec "$shell"
	fi
}

export CW_CHK_NOCOLOR='if [ "`whoami`" = "ubuntu" ];then exit 0;fi'#!/bin/zsh
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
      local sedrules="$sedrules;s$A($re)$A\1${(P)c1}\\$groupcnt$beep$normal${A}g"
      sedrules="${sedrules}I"   # add case insensitive
    else
      local sedrules="$sedrules;s$A($re)$A${(P)c1}\1$beep$normal${A}g"
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
    local FILE=$argv[$#];                         # last argument is the file name
    argv[$#]=()                                   # remove last argument
  fi

  local IDX=0                                     # rotate colors in a cycle
  for arg in $argv[@]; do
    local ARGS=( ${ARGS[@]} ${COLS[$IDX]} $arg )
    IDX=$(( IDX + 1 ))
    [[ $IDX == ${#COLS[@]} ]] && IDX=0
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
#export PATH="$PATH:$HOME/.rvm/bin"
#source $HOME/.rvm/scripts/rvm
#source /usr/local/rvm/scripts/rvm
#export rvmsudo_secure_path=0
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"
#export PATH="$HOME/.rvm/gems/ruby-3.0.0/bin:$HOME/.rvm/bin:$PATH"
eval "$(zoxide init zsh)"
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

export PATH=$(wslPathNorm -p "$PATH")

