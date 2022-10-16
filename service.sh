#!/data/adb/magisk/busybox sh
set -o standalone

#
# Universal Galaxy Store Doze by the
# open source loving GL-DP and all contributors;
# Patches Galaxy Store app and its background
# processes to be able using battery optimization
#

(   
    # Wait until boot completed
    until [ $(resetprop sys.boot_completed) -eq 1 ] &&
        [ -d /sdcard ]; do
        sleep 60
    done

    NLL="/dev/null"

    # Add Galaxy Store to battery optimization
    dumpsys deviceidle whitelist -com.sec.android.app.samsungapps &> $NLL

    exit 0
)