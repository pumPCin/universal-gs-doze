#!/data/adb/magisk/busybox sh
set -o standalone

#
# Universal Galaxy Store Doze by the
# open source loving GL-DP and all contributors;
# Patches Galaxy Store app and its background
# processes to be able using battery optimization
#

# Search and patch any conflicting modules (if present)

{
    GS0="\"com.sec.android.app.samsungapps"\"
    STR1="allow-unthrottled-location package=$GS0"
    STR2="allow-ignore-location-settings package=$GS0"
    STR3="allow-in-power-save package=$GS0"
    STR4="allow-in-data-usage-save package=$GS0"
    NULL="/dev/null"
}

{
    find /data/adb/* -type f -iname "*.xml" -print |
        while IFS= read -r XML; do
            for X in $XML; do
                if grep -qE "$STR1|$STR2|$STR3|$STR4" $X 2> $NULL; then
                    sed -i "/$STR1/d;/$STR2/d;/$STR3/d;/$STR4/d" $X
                fi
            done
        done
}