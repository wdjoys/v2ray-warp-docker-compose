#!/bin/bash
# @Author: xiaocao
# @Date:   2023-04-20 15:44:28
# @Last Modified by:   xiaocao
# @Last Modified time: 2023-04-20 18:55:46
(
    while ! warp-cli --accept-tos register; do
        sleep 1
        echo >&2 "Awaiting warp-svc become online..."
    done
    warp-cli --accept-tos set-mode proxy
    warp-cli --accept-tos set-proxy-port 40001
    warp-cli --accept-tos connect
    warp-cli --accept-tos enable-always-on

) &

exec warp-svc
