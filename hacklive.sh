#!/bin/sh
lb clean --binary
lb config -b iso -d squeeze --archive-areas "main contrib non-free" -a i386 
lb config --packages-lists gnome-core 
lb config --virtual-root-size 4000 
lb config --packages "\
vim gedit kwrite tweak parcellite k3b \
iceweasel iceweasel-l10n-es-es epiphany-browser chromium \
ssh less flashplugin-nonfree yarssr \
network-manager-gnome wireshark harden-remoteaudit \
gparted partimage chntpw wipe testdisk clamtk cairo-dock virtualbox-ose checkgmail "
lb config --repositories "ftp.us.debian.org/debian"
lb config --mirror-binary http://ftp.us.debian.org/debian/
#lb config --aptitude
lb config --bootappend-live "locale=es_CO.UTF-8 keyb=es"
#Aunque funciona cuando uno le pone el username con otro nombre, los datos quedan en un usuario user
#lb config --bootappend-live "username=pupilo"
#This tasks make the cd doesn't be created
#lb config --tasks "spanish spanish-desktop spanish-gnome-desktop"
lb config --debian-installer false
lb build
