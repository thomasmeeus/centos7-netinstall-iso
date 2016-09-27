#!/bin/bash


mkdir original-iso
mkdir target-iso
#wget http://centos.mirror.nucleus.be/7/isos/x86_64/CentOS-7-x86_64-Minimal-1511.iso
## mount -o loop  CentOS-7-x86_64-Minimal-1511.iso original-iso ## doesn't work
cp -aR original-iso/CentOS-7-x86_64-Minimal-1511/* target-iso/
#cp -f isolinux.cfg target-iso/isolinux/isolinux.cfg # optional 
#cp -r ks.cfg target-iso/ks.cfg                      # add your kickstart file & defina a network repo for packages

chmod u+w target-iso/isolinux/isolinux.bin

## Following directories from the original iso are not required
rm -rf target-iso/Packages # Optionally keep if you don't use a network reop
rm -rf target-iso/repodata # Optionally keep if you don't use a network reop
rm -rf target-iso/images
rm -rf target-iso/LiveOS
rm -rf target-iso/EFI

cd target-iso/
mkisofs -R -no-emul-boot -boot-load-size 4 -boot-info-table -joliet-long -o ../cent7-ks.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -V "CENTOS7 KS" .
