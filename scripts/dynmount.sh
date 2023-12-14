#!/system/bin/sh
MODDIR="${0%/*}"
MODNAME="${MODDIR##*/}"

# API_VERSION = 1
STAGE="$1" # prepareEnterMntNs or EnterMntNs
PID="$2" # PID of app process
UID="$3" # UID of app process
PROC="$4" # Process name. Example: com.google.android.gms.unstable
USERID="$5" # USER ID of app
# API_VERSION = 2
# Enable ash standalone
# Enviroment variables: MAGISKTMP, API_VERSION
# API_VERSION = 3
# STAGE="$1" # prepareEnterMntNs or EnterMntNs or OnSetUID
# API_VERSION = 4
# Enviroment variables provided by KernelSU: 
# KSU_VERSION - KernelSU version, "-1" is not installed
# KSU_ON_UNMOUNT - true if process is on unmount
# KSU_ON_GRANTED - true if process is granted su access
# For Magisk, please use magisk command, example: MAGISKTMP="$(magisk --path)"

RUN_SCRIPT(){
    case "$STAGE" in
    "prepareEnterMntNs")
        prepareEnterMntNs
        ;;
    "EnterMntNs")
        EnterMntNs
        ;;
    "OnSetUID")
        OnSetUID
        ;;
    esac
}

prepareEnterMntNs(){
    # script run before enter the mount name space of app process

    if [ "$API_VERSION" -lt 2 ]; then
        # Need API 2 and newer
        exit 1
    fi

    if [ "$PROC" == "com.android.vending" ]; then
        // hack
        exit 0
    fi

    if [ "$PROC" == "$PACKAGE_NAME" ] || [ "$UID" -lt 10000 ] || [ "$PROC" == "com.android.systemui" ]; then
        VERSION=$(dumpsys package __PKGNAME | grep -m1 versionName)
		VERSION="${VERSION#*=}"
		[ "$VERSION" = __PKGVER ] || [ -z "$VERSION" ] || exit 1

        touch "$MODDIR/loaded"
        cp $MODDIR/module.prop $MODDIR/def_module.prop
        sed -i "s/^des.*/[😋 Module is working with Dynamic mount]/g" $MODDIR/module.prop
        exit 0
    fi

    #exit 0 # allow script to run in EnterMntNs stage
    exit 1 # close script and don't allow script to run in EnterMntNs stage
}


EnterMntNs(){
    # script run after enter the mount name space of app process and you allow this script to run in EnterMntNs stage
    . "$MODDIR/mount.sh"
    exit 1
}

RUN_SCRIPT