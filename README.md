项目原作者帖子(https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt
# 写在前面
01.Openwrt源码来源于lean的源码(https://github.com/coolsnowwolf/lede)  
02.插件来源kenzok8大佬的插件库https://github.com/kenzok8/openwrt-packages ；  
本项目是用作于懒人专用的一键云编译，config文件都预设好的  
1.目前适配的路由器 config 有k2p  
2.解释一下各个版本的细微差别。纯净版:默认源码中的对应的config，外加一个zerotier插件；ssrp版本:顾名思义，在纯净版的基础上多出了ssrp插件(插件默认包含ss/ssr客户端，内核默认使用xray，注意没特殊说明一般不含有服务端！)；ssrp+应用过滤:加入插件oaf(源项目地址https://github.com/cykcoco/OpenAppFilter)，可以过滤局域网设备的app应用流量。
