#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git packages https://github.com/coolsnowwolf/packages' feeds.conf.default
sed -i '$a src-git luci https://github.com/coolsnowwolf/luci' feeds.conf.default
sed -i '$a src-git routing https://github.com/coolsnowwolf/routing' feeds.conf.default
sed -i '$a src-git telephony https://git.openwrt.org/feed/telephony.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

