lb clean
rm .stage -rdf
rm config/* -f
cd config
rm binary_* -rdf
rm chroot_apt -rdf
rm chroot_local-hooks -rdf
rm chroot_local-p* -rdf
rm chroot_sources -rdf
rm includes -rdf
rm templates -rdf
cd ..
rm chroot -rdf
#rm cache -rdf
rm binary.packages -rdf
rm binary.list -rdf
rm binary -rdf
rm auto -rdf
