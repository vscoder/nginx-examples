#!/bin/sh
set -x -e
HOSTNAME=$1
IP=${2:-127.0.0.1}
PORT=${3:-80}
exec 3<>/dev/tcp/$IP/$PORT
echo -e "GET / HTTP/1.1\r\nhost: $HOSTNAME\r\nConnection: close\r\n\r\n" >&3
cat <&3
