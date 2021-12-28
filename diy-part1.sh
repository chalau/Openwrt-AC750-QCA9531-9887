#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

pushd package
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
popd

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo 'src-git packages https://git.openwrt.org/feed/packages.git;openwrt-19.07' >feeds.conf.default
echo 'src-git luci https://github.com/Lienol/luci.git;19.07' >>feeds.conf.default
echo 'src-git routing https://git.openwrt.org/feed/routing.git;openwrt-19.07' >>feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git;openwrt-19.07' >>feeds.conf.default
echo 'src-git freifunk https://github.com/freifunk/openwrt-packages.git;openwrt-19.07' >>feeds.conf.default
