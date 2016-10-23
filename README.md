# centos7-netinstall-iso
Minimal requirements for building a centos7 iso

## Why?

I'm used to install Debian using the netinstall iso. A lightweight iso of a few mb that can easily be transferred to a vm.

Centos doesn't seem to offer such a netinstall iso (Smallest I've found: 376MB !)

This script produces an iso of just 42MB (without packages)


## Usage

Add an optional isolinux.cfg and a kickstart file. See setup.sh for more info about the script. Tested on OSX. No mkisofs? brew install cdrtools
