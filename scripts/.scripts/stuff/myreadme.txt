PRE REINSTALLATION:
push .dotfiles, workspace, Wallpapers
push any other important repos
run syncthing
backup Steam Games to HDD

PACSTRAP: linux linux-firmware base base-devel intel-ucode nvidia vim
ARCH-CHROOT:
reflector [update mirrorlist]
[install systemd-boot]
networkmanager [enable service]
[set root passwd]

POST INSTALLATION:
add user, edit sudoers file
uncomment Color and ILoveCandy in /etc/pacman.conf
add data partition to fstab, exec mount -a, give user ownership
install xdg-user-dirs git stow
exec xdg-user-dirs-update
goto $HOME:
    clone .dotfiles, workspace, Wallpapers
    DELETE appropriate empty directories and files about to be symlinked
    exec stow * from .dotfiles, exec stow -t ~/ Home from /media/data
install from mypkgs.txt
enable fstrim.timer, tlp, bluetooth, sddm

AUR: yay picom-git starship-bin visual-studio-code-bin ttf-ms-fonts optimus-manager optimus-manager-qt
FLATPAK: spotify pycharm

TODO:
[disable Meta+Q, touch plasma-i3.desktop in /usr/share/xsessions:]
[Desktop Entry]
Type=XSession
Exec=env KDEWM=/usr/bin/i3 /usr/bin/startplasma-x11
DesktopNames=KDE
Name=Plasma-i3
Comment=Plasma with i3

[add to /etc/pulse/daemon.conf:]
realtime-priority = 9
resample-method = speex-float-5
rlimit-rttime = 1000000
default-sample-format = float32le
default-sample-rate = 48000
[disable touchscreen in /usr/share/X11/xorg.conf.d/40-libinput.conf]

[cp .bash_profile from /etc/skel to /root, ln -s ~/.bashrc from /root]
[touch /root/.vimrc:]
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
filetype plugin indent on
syntax on
set undofile
set tabstop=4
set softtabstop=4
set expandtab

[ln -s /path/to/wallpaper wp in ~/Pictures]
Global theme:ChromeOS-Dark, Kvantum theme:Fluent-Dark
[uncomment gtk3 in /etc/profile.d/libreoffice-fresh.sh]
https://color.firefox.com/?theme=XQAAAAIvAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xNKlhK3D2G8NhCzoNehZAsRaWUnFE5tFEL1QWxFH84NfPtENF2LnXAc9v-S1w0x50aHvlYNBteMkcdczAJMjxkO5gFd0ibg6-IJ6ncJHiBW7XUMlw2momQDy4ArmYnbtGPdi2LCkQdQhIpCRq5G75jieo0FWdJrOIL4QsCx0ku00WqdHc1OiQz-GmuboGJ6h9viR9Hq3rvxRXMPoUhBMLERXDRaP_jiNgA
