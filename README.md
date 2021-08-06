### mirror.jingk.ai

A linux mirror in the Singapore region.

Inspired by my friends [Andrew](https://mirror.0x.sg), [Kenny](http://mirror.aktkn.sg) and [Likang](https://mirror.kst.asia/)

Caddy is ran as a webserver, with traefik sitting in front as a reverse proxy (for my other services).

You can run Caddy standalone as a webserver/reverseproxy, I just set up traefik first before finding out about Caddy so I haven't migrated my existing services yet, hence the tcp passthrough for https traffic.

| [Http](http://mirror.jingk.ai)  | [Https](https://mirror.jingk.ai) | Rsync |
| ------------- | ------------- | ------------- | 
| :white_check_mark:	 | :white_check_mark:	 | :x: (soon) | 

This mirror is ran on a [ViewQwest](https://viewqwest.com) 1gbps line, and offers the following OS packages:

| OS  | Upstream |  Target  |   Initial Sync  | 
| ------------- | ------------- |  ------------- |  ------------- | 
| Arch Linux | [UC Berkerly](https://archlinux.org/mirrors/ocf.berkeley.edu/) |  Full Mirror | :white_check_mark: |
| Alpine Linux | [Princeton University](https://mirror.math.princeton.edu/pub/alpinelinux/) |  Full Mirror | :x:  | 
| Rocky Linux | [eScience Center, Nanjing University](https://mirrors.nju.edu.cn/rocky) | Full Mirror | :x:  | 


Rsync jobs will be ran hourly until the mirror is stable, at which point they will be increased to sync at a 4-5 hour duration.
