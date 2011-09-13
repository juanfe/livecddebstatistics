#!/bin/sh
lb clean --binary
lb config -b iso -d squeeze --archive-areas "main contrib non-free" -a i386 
lb config --packages-lists gnome-core 
lb config --virtual-root-size 4000 
lb config --packages "\
vim gedit kwrite \
openoffice.org openoffice.org-l10n-es openoffice.org-help-es openoffice.org-mysql-connector \
openoffice.org-pdfimport myspell-es \
iceweasel iceweasel-l10n-es-es epiphany-browser \
ssh less flashplugin-nonfree r-doc-pdf r-cran-teachingdemos r-cran-plotrix \
r-cran-timeseries r-cran-fregression r-cran-ftrading r-cran-fbonds r-cran-fassets \
gimp network-manager-gnome gnome-alsamixer gcalctool \
libgl1-mesa-dev libglu1-mesa-dev libmysqlclient-dev libgsl0ldbl libfftw3-3 libgvc5"
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
