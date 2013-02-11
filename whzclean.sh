#!/bin/bash
lb clean
rm .stage -rf
rm config/* -f
echo "Omit the previous message"
cd config
#rm binary_* -rf
rm archives -rf
rm binary_debian-installer -rf
rm binary_grub -rf
rm binary_rootfs -rf
rm binary_syslinux -rf
rm chroot_apt -rf
rm chroot_local-hooks -rf
#rm chroot_local-p* -rf
rm chroot_local-patches -rf
#rm chroot_sources -rf
rm hooks -rf
rm includes -rf
rm includes.* -rf
rm templates -rf
rm packages* -rf
rm preseed -rf
rm task-lists -rf
rm templates -rf
cd ..
rm chroot -rf
rm cache/stages_bootstrap -rf
rm binary.packages -rf
rm binary.list -rf
rm binary -rf
rm auto -rf
