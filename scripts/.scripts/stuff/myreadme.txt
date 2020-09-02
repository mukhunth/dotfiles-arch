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
uncomment multilib and Color,add ILoveCandy in /etc/pacman.conf
add data partition to fstab, exec mount -a, give user ownership
install xdg-user-dirs git stow
exec xdg-user-dirs-update
goto $HOME:
    clone .dotfiles, workspace, Wallpapers
    DELETE appropriate empty directories and files about to be symlinked
    exec stow * from .dotfiles, exec stow -t ~/ Home from /media/data
install from mypkgs.txt
enable fstrim.timer, tlp, bluetooth, sddm

AUR: yay starship-bin snapd picom-git ttf-ms-fonts optimus-manager optimus-manager-qt vscode
SNAP: spotify pycharm

TODO:
[disable Meta+Q, add plasma-i3.desktop in /usr/share/xsessions:]
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

Global theme:ChromeOS-Dark, Kvantum theme:Fluent-Dark
https://color.firefox.com/?theme=XQAAAAIvAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xNKlhK3D2G8NhCzoNehZAsRaWUnFE5tFEL1QWxFH84NfPtENF2LnXAc9v-S1w0x50aHvlYNBteMkcdczAJMjxkO5gFd0ibg6-IJ6ncJHiBW7XUMlw2momQDy4ArmYnbtGPdi2LCkQdQhIpCRq5G75jieo0FWdJrOIL4QsCx0ku00WqdHc1OiQz-GmuboGJ6h9viR9Hq3rvxRXMPoUhBMLERXDRaP_jiNgA
