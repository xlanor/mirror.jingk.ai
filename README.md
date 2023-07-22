
# mirror.jingk.ai

A Linux mirror in the Singapore region. Serving APAC users.

If you would like your distribution to be mirrored, please open an issue with an rsync upstream.

Inspired by my friends running mirrors:
- [Andrew](https://mirror.0x.sg) 
- [Kenny](https://mirror.aktkn.sg) 
- [Likang](https://mirror.kst.asia/)

### Why run a mirror?

Too many of the smaller distributions that I utilise have only one mirror in the region. 

As several of my colleagues use Arch and alpine quite frequently, I decided it was probably simpler to set up my own mirror to resolve any synchronisation issues.

You can check my mirror status from [Archlinux](https://archlinux.org/mirrors/jingk.ai/) here.

| [Http](http://mirror.jingk.ai)  | [Https](https://mirror.jingk.ai) | [Rsync](rsync://mirror.jingk.ai) |
| ------------- | ------------- | ------------- | 
| :white_check_mark:	 | :white_check_mark:	 | :white_check_mark: | 

The following packages are mirrored:

| OS  | Upstream |  Target  |   Initial Sync  | Mirror Schedule | 
| ------------- | ------------- |  ------------- |  ------------- |   ------------- | 
| [Arch Linux](https://archlinux.org) | [Rackspace London](https://lon.mirror.rackspace.com/archlinux/) |  Full Mirror | ✅ | Hourly |
| [Alma Linux](https://almalinux.org) | [AlmaLinux, Tier 0](https://rsync.repo.almalinux.org/almalinux/) | Full Mirror | ✅ | */3 |
| [ArcoLinux](https://archolinux.com) | [Belnet](ftp://ftp.belnet.be ) | Full Mirror | ✅ |  */3 |
| [Alpine Linux](https://alpinelinux.org) | [Tier 0 AlpineLinux](rsync://rsync.alpinelinux.org/alpine/) | Full Mirror | ❌ |  */5 |
| [EndeavourOS](https://endeavouros.com) | [Alpix](https://mirror.alpix.eu/endeavouros/) | Full Mirror | ✅ |  */3 |
| [LinuxMint](https://linuxmint.com) | [Tier 0 LinuxMint]([https://mirror.alpix.eu/endeavouros/](http://rsync-packages.linuxmint.com/)) | Full Mirror | ✅ |  */3 |
| [LinuxMint ISO](https://linuxmint.com) | Tier 0 LinuxMint ) | ISO Mirror | ✅ |  */3 |
| [MXLinux](https://mxlinux.org/) | [Rochester Institute of Technology](https://mirrors.rit.edu/mxlinux/) | Full Mirror | ✅ |  */3 |
| [ZorinOS](https://zorin.com/os/) | ZorinOS Tier 1 Upstream | ISOs | ✅ | */5 |

The homelab equipment powering this mirror

| Part  | Details | 
| ------------- | ------------- | 
| Server | Virtualized Proxmox. Running on either Epyc/5900x depending on load. | 
| Storage | CIFS to a ZFS pool made up of WD HC530s and Seagate Ironwolf Pros. Approximately 10tb free at the time of writing. | 
| Switch | Mikrotik CRS309-1G-8S -> Brocade ICX6450-24P | 
| Router | Mikrotik CCR2116-12G-4S+ | 
| Network | 1GbE MyRepublic, failover 1GbE M1 | 

In this setup, Caddy is ran as a webserver to handle ssl certs, and L4 forwarding is done with 2 haproxy setups.

### Contact

We prefer github issues. If unable to respond, please reach out via email.
[Jingkai Tan](mailto:contact@jingk.ai?subject=[Mirror]mirror.jingk.ai%20issues)
[Likang Tan](mailto:tanlikang11@gmail.com?subject=[Mirror]mirror.jingk.ai%20issues)

