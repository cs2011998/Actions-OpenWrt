#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
###echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git kenzok8_openwrt_packages https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git kenzok8_small_package https://github.com/kenzok8/small-package.git' feeds.conf.default
sed -i '1i src-git OpenClash https://github.com/vernesong/OpenClash.git' feeds.conf.default
sed -i '1i src-git openwrt_passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '1i src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
