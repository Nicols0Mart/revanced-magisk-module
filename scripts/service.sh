#!/system/bin/sh
# shellcheck disable=SC2086
MODDIR=${0%/*}

until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 1; done
until [ -d "/sdcard/Android" ]; do sleep 1; done
while
	BASEPATH=$(pm path __PKGNAME)
	svcl=$?
	[ $svcl = 20 ]
do sleep 2; done
sleep 5

err() {
	[ ! -f $MODDIR/def_module.prop ] && cp $MODDIR/module.prop $MODDIR/def_module.prop
	sed -i "s/^des.*/description=[⚠️ Module is inactive: '${1}']/g" $MODDIR/module.prop
}

if [ $svcl = 0 ]; then # Check if app installed
	BASEPATH=$(echo $BASEPATH | head -1 | sed 's/^package://g' | sed 's/\/base.apk$//g')
	if [ -d $BASEPATH/lib ]; then # Check if app installation is valid
		VERSION=$(dumpsys package __PKGNAME | grep -m1 versionName)
		VERSION="${VERSION#*=}"
		if [ "$VERSION" = __PKGVER ] || [ -z "$VERSION" ]; then # Check installed app version matches module app version
			grep __PKGNAME /proc/mounts | while read -r line; do # Unmount app
				mp=${line#* }
				mp=${mp%% *}
				umount -l ${mp%%\\*}
			done
			if [ -e "$MODDIR/loaded" ] || { . "$MODDIR/mount.sh"; } then # Mount Revanced
				mv -f $MODDIR/def_module.prop $MODDIR/module.prop
				exit 0
			else
				err "mount failed"
			fi
		else
			err "version mismatch (installed:${VERSION}, module:__PKGVER)"
		fi
	else
		err "invalid installation"
	fi
else
	err "app not installed"
fi
