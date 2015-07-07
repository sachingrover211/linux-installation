###mount external drives automatically on startup
etc/fstab - file where the mount points are located
`<file system> <mount point>   <type>  <options>       <dump>  <pass>`

* UUID = XXXXX 
UUID and label description - is available in /dev/disk/
* type  = ntfs    
* options = defaults (uid and gid can be skipped)
* dump = 0 (0/1, should the media be dumped everytime)      
* fsck (pass) (order in which bootloader should mount) = 2 (0 for swap, 1 for root, 2 for after root)

Commands:

* `$ sudo blkid` gives the partition description
* `$ fdisk -l` - gives the partition table 

References:

* http://www.linuxstall.com/fstab/
* https://help.ubuntu.com/community/Fstab

###pidgin remove users login notification
Go to plugins -> configure plugin - libnotify -> remove Buddy sign on notification

###font usage

Try these in order and chose the best ones (depends on personal choice, I like these):

* Monospace 10
* Ubuntu Mono 12
* Lucida console (usually not available)
* Droid sans mono (in some pixel sizes this looks great)

###Php setup with Apache


### Mysql setup with Php


### Mysql setup with Apache