#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改默认ip
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 删除默认主题
sed -i 's/+luci-theme-bootstrap//g' feeds/luci/collections/luci/Makefile

# 设置默认密码
sed -i 's/^root.*/root:$1$tPYTHhT8$XRiZ79P8LHjTJvevrFt.F1:18473:0:99999:7:::/g' package/base-files/files/etc/shadow
