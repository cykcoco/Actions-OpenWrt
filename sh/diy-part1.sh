#!/bin/bash
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git argon https://github.com/jerrykuku/openwrt-package' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git oaf https://github.com/destan19/OpenAppFilter' >>feeds.conf.default
echo 'src-git alist https://github.com/sbwml/luci-app-alist' >>feeds.conf.default
