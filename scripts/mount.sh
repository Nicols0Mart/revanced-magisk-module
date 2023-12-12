#!/system/bin/sh
RVPATH="$MODDIR/revanced.apk"
BASEPATH=$(pm path __PKGNAME | head -1 | sed 's/^package://g' | sed 's/\/base.apk$//g')
chcon u:object_r:magisk_file:s0 $RVPATH
# chmod 0755 $RVPATH
mount -o bind $RVPATH $BASEPATH/base.apk
am force-stop __PKGNAME