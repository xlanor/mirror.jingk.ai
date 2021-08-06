# mirror.jingk.ai

A linux mirror in the Singapore region.

Inspired by my friends running mirrors:
- [Andrew](https://mirror.0x.sg), 
- [Kenny](https://mirror.aktkn.sg) 
- [Likang](https://mirror.kst.asia/)

Also, too many of the smaller distributions that I utilise have only one mirror in the region.

| [Http](http://mirror.jingk.ai)  | [Https](https://mirror.jingk.ai) | Rsync |
| ------------- | ------------- | ------------- | 
| :white_check_mark:	 | :white_check_mark:	 | :x: (soon) | 

The following packages are mirrored:

| OS  | Upstream |  Target  |   Initial Sync  | 
| ------------- | ------------- |  ------------- |  ------------- | 
| Arch Linux | [UC Berkerly](https://archlinux.org/mirrors/ocf.berkeley.edu/) |  Full Mirror | :white_check_mark: |
| Alpine Linux | [Princeton University](https://mirror.math.princeton.edu/pub/alpinelinux/) |  Full Mirror | :x:  | 
| Rocky Linux | [eScience Center, Nanjing University](https://mirrors.nju.edu.cn/rocky) | Full Mirror | :x:  | 

The homelab equipment powering this mirror

| Part  | Details | 
| ------------- | ------------- | 
| Server | i7-7980xe, 64gb DDR4 | 
| Storage | CIFS to a ZFS pool made up of HGST 10tbs and Seagate Ironwolf Pros | 
| Switch | Cisco SG300-10P | 
| Router | Ubiqutti Dream Machine | 
| Network | 1GbE ViewQwest | 

In this setup, Caddy is ran as a webserver, with traefik sitting in front as a reverse proxy (for my other services).

You can run Caddy standalone as a webserver/rproxy. This implementation is due to my existing setup with traefik.