#!/bin/zsh

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

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

# omz reload
echo "check snapd service..."
sudo systemctl is-active --quiet snapd || sudo systemctl restart snapd
echo "check snap-core-11993.mount service..."
sudo systemctl is-active --quiet snap-core-11993.mount || sudo systemctl restart snap-core-11993.mount
echo "zsh reload..."
zsh_reload
