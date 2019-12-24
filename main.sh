#!/bin/bash

remoteuser="hackme"
hostname="hackme.com"
pings=2
timeout=2
mac="0A:0B:0C:0D:0E:0F"

case "$1" in
        "start")
                wakeonlan $mac
                ;;
        "stop")
                ssh $remoteuser@$hostname 'sudo poweroff'
                ;;
        "restart")
                ssh $remoteuser@$hostname 'sudo reboot'
                ;;
        "status")
                ping -c $pings $hostname -w $timeout -q >/dev/null
                if [ "$?" -eq "0" ]; then
                        echo "Server is Online"
                else
                        echo "Server is Offline"
                fi
                ;;
        *)
                echo $"Usage: $0 {start|stop|restart|status}"
                exit 1
                ;;
esac
