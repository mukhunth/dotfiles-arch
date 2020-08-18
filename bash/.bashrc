#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[01;31m\][\[\e[01;32m\]\u\[\e[00;34m\]@\[\e[01;34m\]arch\[\e[01;35m\] \W\[\e[01;31m\]]\[\e[00;38m\]\$\[\e[m\] '
# put this in /etc/bash.bashrc for root prompt -> PS1='\[\e[01;31m\][root\[\e[01;32m\] \W\[\e[01;38m\]]\$\[\e[m\] '

# Settings
shopt -s autocd
set -o vi
HISTSIZE= HISTFILESIZE=

# Aliases
alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias pip='pip3'
alias p='sudo pacman'
alias cpkg='pacman -Q | wc -l'
alias cfb='vim ~/.bashrc'
alias cfv='vim ~/.vimrc'
alias cfi3='vim ~/.config/i3/config'
alias d='cd ~/.dotfiles'

alias ytmp3="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(title)s.%(ext)s'"
alias ytmp3p="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(playlist)s/%(playlist_index)s-%(title)s.%(ext)s'"
