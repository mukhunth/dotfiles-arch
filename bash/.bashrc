#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Settings
HISTSIZE= HISTFILESIZE=
shopt -s autocd
bind 'set show-all-if-unmodified on'
set -o vi
bind 'set show-mode-in-prompt on'
bind 'set vi-cmd-mode-string "  "'
bind 'set vi-ins-mode-string ""'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Aliases
alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias p='sudo pacman'
alias cpkg='pacman -Q | wc -l'
alias pip='pip3'
alias cfb='vim ~/.bashrc'
alias cfv='vim ~/.vimrc'

alias d='cd ~/.dotfiles'
alias cfi3='vim ~/.config/i3/config'
alias cfi3b='vim ~/.config/i3blocks/config'
alias cfpi='vim ~/.config/picom/picom.conf'

alias ytmp3="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(title)s.%(ext)s'"
alias ytmp3p="youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(playlist)s/%(playlist_index)s-%(title)s.%(ext)s'"

# Prompt
R='38;2;255;95;0m'  #xterm202
G='38;2;95;255;95m' #xterm083
B='38;2;0;135;255m' #xterm033
if [[ ${EUID} == 0 ]]; then
        PS1='\[\e[1m\]\[\e[${B}\]\W \[\e[0m\]\[\e[${R}\]\$\[\e[0m\] '
else
        PS1='\[\e[1m\]\[\e[${B}\]\W \[\e[0m\]\[\e[${G}\]\$\[\e[0m\] '
        eval "$(starship init bash)"
fi

