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

echo "apt update..."
sudo apt update -y
echo "apt upgrade..."
sudo apt upgrade -y
echo "apt autoremove..."
sudo apt autoremove -y
echo "snap refresh --list..."
sudo snap refresh --list
echo "snap refresh..."
sudo snap refresh
#echo "gem update --system ($(sudo ruby --version), gem version = $(sudo gem --version ))..."
echo "gem update --system ($(ruby --version), gem version = $(gem --version ))..."
#sudo gem update --system
gem update --system
echo "gem update..."
#sudo gem update
gem update
echo "brew upgrade $(brew --version)..."
brew upgrade
echo "brew update..."
brew update
echo "rust update..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
echo "homebins update..."
homebins
homebins update
echo "cargo install-update..."
cargo install-update -a
echo "zsh update..."
omz update
echo "zsh reload..."
# omz reload
zsh_reload

# sudo systemctl start snap-core18-2246.mount
# sudo systemctl start snap-core20-1169.mount
# sudo systemctl start snap-core-11993.mount

#sudo systemctl is-active --quiet snapd || sudo systemctl restart snapd
#sudo systemctl is-active --quiet snap-core-11993.mount || sudo systemctl restart snap-core-11993.mount