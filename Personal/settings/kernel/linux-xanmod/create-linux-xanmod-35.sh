#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website	: https://www.arcolinux.info
# Website	: https://www.arcolinux.com
# Website	: https://www.arcolinuxd.com
# Website	: https://www.arcolinuxb.com
# Website	: https://www.arcolinuxiso.com
# Website	: https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://wiki.archlinux.org/title/Modprobed-db

wget https://aur.archlinux.org/cgit/aur.git/snapshot/linux-xanmod.tar.gz

tar xzf linux-xanmod*

rm linux-xanmod.tar.gz

FIND="_microarchitecture=0"
REPLACE="_microarchitecture=35"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

# FIND="use_numa=y"
# REPLACE="use_numa=n"
# sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

# FIND="use_tracers=y"
# REPLACE="use_tracers=n"
# sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

# FIND="_compiler=gcc"
# REPLACE="_compiler=gcc"
# sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

# FIND="_compress_modules=n"
# REPLACE="_compress_modules=n"
# sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

FIND="_localmodcfg=n"
REPLACE="_localmodcfg=y"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod/PKGBUILD

cd linux-xanmod

makepkg -s --skippgpcheck

echo "################################################################"
echo "####                      INSTALLED                       ######"
echo "################################################################"
