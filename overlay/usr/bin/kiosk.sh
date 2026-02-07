#!/bin/sh
set -e

export XDG_RUNTIME_DIR=/run/user/0
mkdir -p "$XDG_RUNTIME_DIR"
chmod 0700 "$XDG_RUNTIME_DIR"

weston --backend=drm-backend.so --tty=1 --log=/var/log/weston.log &

sleep 2

exec /usr/bin/kiosk-clock
