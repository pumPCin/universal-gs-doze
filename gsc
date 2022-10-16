#!/system/bin/sh

#
# Universal Galaxy Store Doze by the
# open source loving GL-DP and all contributors;
# Patches Galaxy Store app and its background
# processes to be able using battery optimization
#

ID="$(id -u)"
NULL="/dev/null"
GS="com.sec.android.app.samsungapps"

{ R="\e[1;31m" G="\e[1;32m" Y="\e[1;33m" N="\e[0m"; } 2> $NULL

CHK_OPT() {
    local OPT="$(dumpsys deviceidle whitelist |
        awk -F',' "/$GS/{print $2;exit}")"
    [ -z $OPT ] && echo -e "$G $1 Optimized. $N" ||
        echo -e "$R $1 Not Optimized. $N"
}

case $ID in
    0)
        CHK_OPT "Galaxy Store is"
        ;;
    *)
        echo -e "$Y Superuser (su) rights is needed! $N"
        exit 1
        ;;
esac