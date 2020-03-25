#!/bin/bash --login

# Usage
if test $# -lt 1
    then echo "$0 -f/-r/--play-pause/--stop"; exit;
fi

audioplayers=( /usr/bin/amarok /usr/bin/audacious2 )

for i in ${audioplayers|*|}
do
    pid=`pidof $i`
    #set dbus address
    export DBUS_SESSION_BUS_ADDRESS=`cat /proc/$pid/environ | tr '\0' '\n' | grep DBUS | cut -d '=' -f2-`
    if [ "$pid" != "" ]
        then `$i $1`; break;
    fi
done
