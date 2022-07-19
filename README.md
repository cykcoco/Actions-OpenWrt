项目原作者帖子(https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt
# 写在前面
01.Openwrt源码来源于lean的源码(https://github.com/coolsnowwolf/lede)  
02.插件来源kenzok8大佬的插件库https://github.com/kenzok8/openwrt-packages ；jerrykuku大佬的主题插件 https://github.com/jerrykuku/openwrt-package  
03.所有固件默认开启IPV6  
   本项目是用作于懒人专用的一键云编译，config文件都预设好的,目前适配的路由器有:  
1.K2P:解释一下各个版本的细微差别。纯净版:默认源码中的对应的config，外加一个zerotier插件；ssrp版本:在纯净版的基础上多出了ssrp插件(插件默认包含ss/ssr客户端，内核默认使用Xray-core，注意没特殊说明一般不含有服务端！)；ssrp+应用过滤:加入插件oaf(源项目地址https://github.com/cykcoco/OpenAppFilter )， 可以过滤局域网设备的app应用流量。  
2.K2T:考虑到K2T的内存仅有64M，为了能够运行ssrp插件，所以去掉了很多默认的插件(upnp,kms,wol)，ssrp插件带有ss/ssr客户端(含Xray-core)和trojan  
3.X86:已开启5.18最新内核适配，Overlay空间设置800M。插件在原有基础上大致加入：acme证书,四个代理软件(bypass,passwall,openclash,ssrp)，docker,oaf,网易云音乐解锁(2种方式都勾选了),socat,istore
