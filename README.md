
# mirror.jingk.ai

A Linux mirror in the Singapore region. Serving APAC users.

Inspired by my friends running mirrors:
- [Andrew](https://mirror.0x.sg) 
- [Kenny](https://mirror.aktkn.sg) 
- [Likang](https://mirror.kst.asia/)

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
| [Arch Linux](https://archlinux.org) | [Rackspace London](https://lon.mirror.rackspace.com/archlinux/) |  Full Mirror | ✅ |
| [Alma Linux](https://almalinux.org) | [AlmaLinux, Tier 0](https://rsync.repo.almalinux.org/almalinux/) | Full Mirror | ✅ | 
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
