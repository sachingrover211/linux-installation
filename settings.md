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

###Apache settings
Issues faced - 

* Wanted to change the folder `/var/www/html` to `/var/www`. Did this by updating the DocumentRoot in config file. In /etc/apache2 there is a sites-available folder. In that you will see all the website configuration files that we have. In parallel there is a sites-enabled folder will show you which file is being used. Update that file to html folder from DocumentRoot.
* In `/etc/apache2` there is a file called envvars (read environment variables). There it sets `APACHE_RUN_USER` and `APACHE_RUN_GROUP` to `www-data`. Either update this to your user and group or update your folders to `www-data` user and group using chown. This would create problems when you make symboliclinks to your website folders.
* There is a configuration file in `apache2.conf` in `/etc/apache2`. Make sure the settings in `<Directory>` structure is correct. It has a setting for the folder where you want to place your code.

###PHP setup with Apache
The idea for this is to make sure Apache runs PHP files. For software manager installation there is a php.ini file in `/etc/php5/apache2` or at `/usr/share/php5` which will have all the settings. If you still can't find it then check for development and production copies of `php.ini-<server type>`, and copy one of those to a `php.ini` file. The latest installations come with all the setting for apache to run php. If you want to see errors then do these changes to php.ini - 

* set error_reporting=E_ALL
* set display_errors=On
* set display_startup_errors=On

### MySQL setup with PHP
Install php5-mysql instead of instead of installing them separately. The settings will be handled using this. If you still want to install PHP5 and MySQL separately, then I am adding what I learnt.

* You need to add `mysql.ini, mysql.ini and pdo_mysql.ini` to mods-available folder. This is available in `/etc/php5/`. These files are also present in `/usr/share/php5/mysql` folder as well. I am not sure where can I get them from or whether they were part of the complete zip or not. Because of the unavailability of .ini and .so (dynamic linking libraries for linux) I decided to go ahead and install php5-mysql package.
* There are some php.ini changes as well where you link the dynamic link files to php so that it can load the mysqli functions. But I am not sure of where the change was made.

###Git settings
Git needs you to setup an ssh key to your account. The steps for that are 

* git config --global user.name "user name"
* git config --global user.email "email"
* setup the ssh key
	- ssh-keygen -t rsa -b 4096 -C "your email address" (Hit Enter when it asks your for a file name)
	- Give it a passphrase for authentication when you can use it.
	- Now copy the key from `~/.ssh/id_rsa.pub` and add it to your account/profile settings on Github website. The key will end with your email ID (the one you provided above). Copy it from ssh-rsa to your email ID and paste it in Github.  

References 

* https://help.github.com/articles/set-up-git/
* https://help.github.com/articles/generating-ssh-keys
