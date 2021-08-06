### mirror.jingk.ai

A linux mirror in the Singapore region.

Inspired by my friends [Andrew](https://mirror.0x.sg), [Kenny](http://mirror.aktkn.sg) and [Likang](https://mirror.kst.asia/)

Nginx is ran as a webserver, with traefik sitting in front as a reverse proxy (for my other services).

| HTTP  | HTTPS | Rsync |
| ------------- | ------------- | ------------- | 
| :white_check_mark:	 | :white_check_mark:	 | :x: (soon) | 

This mirror is ran on a [ViewQwest](https://viewqwest.com) 1gbps line, and offers the following OS packages:

| OS  | Upstream | 
| ------------- | ------------- | 
| Arch Linux | [UC Berkerly](https://archlinux.org/mirrors/ocf.berkeley.edu/) | 
| Alpine Linux | [Leaseweb](http://mirror.leaseweb.com/alpine/) | 
| Void Linux | [Swinburne University of Technology](http://ftp.swin.edu.au/voidlinux/) | 


Rsync jobs will be ran hourly until the mirror is stable, at which point they will be increased to sync at a 4-5 hour duration.