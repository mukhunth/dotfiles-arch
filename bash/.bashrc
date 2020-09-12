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
alias cp='cp -i'
alias mv='mv -i'
alias pip='pip3'
alias p='sudo pacman'
alias Syu='yay && echo -e "\e[1;36m:: Running pacdiff\e[0m" && pacdiff && echo -e "\e[1;34m:: Flatpak\e[0m" && flatpak update'
alias Sc='yay -Sc && yay --clean && echo -e "\e[1;34m:: Flatpak\e[0m" && flatpak uninstall --unused'
alias pc='echo -e "\e[1;34mpacman\e[0m  : $(pacman -Q|wc -l)\n\e[1;34mAUR\e[0m     : $(pacman -Qm|wc -l)\n\e[1;36mflatpak\e[0m : $(flatpak list|wc -l)"'

alias d='cd ~/.dotfiles'
alias cfb='vim ~/.bashrc'
alias cfv='vim ~/.vimrc'
alias cfr='vim ~/.config/ranger/rc.conf'
alias cfcm='vim ~/.config/cmus/rc'
alias cfi3='vim ~/.config/i3/config'
alias cfi3b='nano ~/.config/i3blocks/config'
alias cfpi='vim ~/.config/picom/picom.conf'

alias mpva="mpv --no-audio-display --no-resume-playback"
alias ytmp3="youtube-dl -i -f bestaudio -x --audio-format mp3 --audio-quality 0 -o '~/Music/%(title)s.%(ext)s'"
alias ytmp3p="youtube-dl -i -f bestaudio -x --audio-format mp3 --audio-quality 0 -o '~/Music/%(playlist)s/%(playlist_index)s-%(title)s.%(ext)s'"

# Prompt
R='38;2;255;95;0m'
G='38;2;95;255;95m'
B='38;2;0;102;192m'
if [[ ${EUID} == 0 ]]; then
        PS1='\[\e[1m\]\[\e[${B}\]\W \[\e[0m\]\[\e[${R}\]\$\[\e[0m\] '
else
        PS1='\[\e[1m\]\[\e[${B}\]\W \[\e[0m\]\[\e[${G}\]\$\[\e[0m\] '
        eval "$(starship init bash)"
fi
