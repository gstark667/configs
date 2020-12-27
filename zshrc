# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/octalus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

powerline-daemon -q
. /usr/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

NOTES_DIR="$HOME/Notes"
EDITOR=vim
function n() {
	echo $#
	if [ $# -eq 1 ]; then
		$EDITOR $NOTES_DIR/$1.md
	else
		$EDITOR $NOTES_DIR/general.md
	fi
}
