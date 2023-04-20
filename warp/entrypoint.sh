#!/bin/bash
# @Author: xiaocao
# @Date:   2023-04-20 15:44:28
# @Last Modified by:   xiaocao
# @Last Modified time: 2023-04-20 17:29:05
warp-cli register &&
    warp-cli connect &&
    warp-cli set-mode proxy 40001 &&
    warp-cli set-proxy-port &&
    warp-cli enable-always-on
