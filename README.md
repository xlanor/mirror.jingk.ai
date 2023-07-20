
# mirror.jingk.ai

A linux mirror in the Singapore region.

Inspired by my friends running mirrors:
- [Andrew](https://mirror.0x.sg) 
- [Kenny](https://mirror.aktkn.sg) 
- [Likang](https://mirror.kst.asia/)

### Service in India may be affected

This mirror is running on a cloudflare domain, and may not be avaliable to users from India as there are ISPs who block domains hosted on cf due to a court order.

Please move to another mirror service instead as I do not intend to move from cf.

For affected EndeavourOS users in particular in india, please consider using [freedif](mirror.freedif.org). All endeavourOS mirrors sync off Tier 1, and the dns service for mirror.freedif.org is provided by OVH, so you should not see any changes in service coverage.


### Why run a mirror?

Too many of the smaller distributions that I utilise have only one mirror in the region. 

As several of my colleagues use Arch and alpine quite frequently, I decided it was probably simpler to set up my own mirror to resolve any synchronisation issues.

The goal of this mirror is to increase coverage for less popular linux distros in Singapore. As such, I will try not to sync distributions that already have many good and existing mirrors in SG, unless I am personally using them.

You can check my mirror status from [Archlinux](https://archlinux.org/mirrors/jingk.ai/) here.

| [Http](http://mirror.jingk.ai)  | [Https](https://mirror.jingk.ai) | [Rsync](rsync://mirror.jingk.ai) |
| ------------- | ------------- | ------------- | 
| :white_check_mark:	 | :white_check_mark:	 | :white_check_mark: | 

The following packages are mirrored:

| OS  | Upstream |  Target  |   Initial Sync  | 
| ------------- | ------------- |  ------------- |  ------------- | 
| [Arch Linux](https://archlinux.org) | [UC Berkerly](https://archlinux.org/mirrors/ocf.berkeley.edu/) |  Full Mirror | ✅ |
| [Rocky Linux](https://rockylinux.org) | [eScience Center, Nanjing University](https://mirrors.nju.edu.cn/rocky) | Full Mirror | ✅ | 
| [EndeavourOS](https://endeavouros.com) | [Alpix](https://mirror.alpix.eu/endeavouros/) | Full Mirror | ✅ | 
| [MXLinux](https://mxlinux.org/) | [Rochester Institute of Technology](https://mirrors.rit.edu/mxlinux/) | Full Mirror | ✅ | 
| [ZorinOS](https://zorin.com/os/) | ZorinOS Tier 1 Upstream | ISOs | ✅ |
| [ArcoLinux](https://archolinux.com) | [Belnet](ftp://ftp.belnet.be ) | Full Mirror | ✅ | 

The homelab equipment powering this mirror

| Part  | Details | 
| ------------- | ------------- | 
| Server | Virtualized Proxmox | 
| Storage | CIFS to a ZFS pool made up of WD HC530s and Seagate Ironwolf Pros | 
| Switch | Mikrotik CRS309-1G-8S | Brocade ICX6450-24P | 
| Router | Mikrotik CCR2116-12G-4S+ | 
| Network | 1GbE MyRepublic, failover 1GbE M1 | 

In this setup, Caddy is ran as a webserver to handle ssl authentication, and L4 forwarding is done with 2 haproxy setups.
