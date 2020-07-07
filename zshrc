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
. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

START_SSH=0
if [ -f ~/.ssh-agent ]; then
	source ~/.ssh-agent > /dev/null
	if ! kill -0 $SSH_AGENT_PID || [ ! -w $SSH_AUTH_SOCK ]; then
		START_SSH=1
	fi
else
	START_SSH=1
fi

if [ ! -d ~/.ssh ]; then
	START_SSH=0
fi

if [ $START_SSH -eq 1 ]; then
	echo "starting ssh agent";
	ssh-agent > ~/.ssh-agent
	source ~/.ssh-agent > /dev/null
	ssh-add $(ls -d ~/.ssh/* | grep -v pub | grep -v known_hosts | grep -v config) > /dev/null 2> /dev/null
fi
