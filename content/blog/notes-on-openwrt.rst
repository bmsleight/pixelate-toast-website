Note on OpenWRT on TP-LINK TL-WR703N
####################################################
:date: 2014-01-02 21:00
:tags: openwrt, wr703n

The wonderful router, can run `OpenWRT <http://openwrt.org>`_ built in Wifi (802.11 b/g/n) and an USB 2.0 port `TL-WRT703N <http://wiki.openwrt.org/toh/tp-link/tl-wr703n>`_. So I can use it to host the `JavaScript pages <https://github.com/bmsleight/pixelate-toast/tree/master/javascript>`_ as even after a full `OpenWRT <http://openwrt.org>`_ it still has around a 1Mb memory, enough to do some hosting. 

Notes On Installation
----------------------

This is some notes, used to install and get relayd up and running. I may use it as a plan open wireless access point in the future.

Download::

    $ wget http://downloads.openwrt.org/attitude_adjustment/12.09/ar71xx/generic/openwrt-ar71xx-generic-tl-wr703n-v1-squashfs-factory.bin

Set laptop wired IP to 192.168.1.4

Follow the instructions at http://www.madox.net/blog/projects/tp-link-tl-wr703n/

Still in the browser, login to router (root/blank). Set password.

Now I am also running openWRT on my main home wireless access point. Using 192.168.1.1, so once the router is flashed I need to change the routers fixed LAN address to something else - if I want to connect to my main wireless access point. 

Still in the browser, at http://192.168.1.1/ -> Network 
Edit LAN, set IPv4 address -> 192.168.2.1 -> Save and apply

You are now unable to connect, change laptop wired IP Address to 192.168.2.4, Netmask as 255.255.255.0, Gateway as 192.168.2.1, DNS Servers as 192.168.2.1

Browser go to http://192.168.2.1/ redirect to http://192.168.2.1/cgi-bin/luci

Network -> Wifi -> Scan

Then (hopefully) Join Network for the network of your choice. Enter key and leave Create / Assign firewall-zone as WAN -> Save & Apply -> Interfaces 

And we should see a nice IPv4 for the WAN side as well, time for some command line on the router, to confirm connection::

    $ ssh root@192.168.2.1
    root@OpenWrt:~# ping google.com
    root@OpenWrt:~# opkg update
    root@OpenWrt:~# opkg install relayd
    root@OpenWrt:~# opkg install luci-proto-relay
    root@OpenWrt:~# /etc/init.d/relayd enable


Back/Still in the browser, Network -> Create Interface, Named: stabridge Protocol: Relay Bridge, Then tick WAN and LAN, Local IPv4 address: 192.168.2.1, Save and Apply

Network -> Firewall -> General Settings
Zone Forwarding, Lan=>Wan - Change forwarding to Accept


Back to laptop and try::

    $ ping google
