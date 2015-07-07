\* means requires root access

###Languages

####JAVA
* look for jdk download online (directly downloadable from java.com)
* put it in /usr/lib - in that there is some folder related to java, jdk, or jvm (where openjdk is kept). I usually mv latest java to that place \*
* update alternatives - alternatives can be found at placed at `/etc/alternatives` \*
	- update-alternatives --install "usr/bin/\<name\>" \<name\> \<path to bin/\<name\>\> 1
	- name can be - java, javac, jexecm javaws, javap, javah and javadoc
* config alternatives \*
	- update-alternatives --config \<name\>
	- name is java, javac, jexec, javaws, javap, javah and javadoc
	- this is to set the default alternative in case there are more than 1 choice like in case of java. Choose the option to set it as default

####R
Latest R is not available in the base repositories provided on install. So add a new repository for it.

#####Steps to install new repository first:
* go to /etc/apt
* edit sources.list to add new repository URL. It lists which repository you would need. If you look at readme there are vivid, utopic, tryst and precise ubuntu repository links. Mine asked for trusty. Use the one you need - Command - `deb \<url\>` \*
* I used http://cran.cnr.Berkeley.edu/bin/linux/ubuntu trusty/
* Now if you will do apt-get update \*, you will see that there is an error message for the repository. To fix this you need to use `apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9` \*. This will add the key for the repository. The E084DAB9 is the private key given on the README page for R.

Now install R - `apt-get install r-base` \*

URLs:

* http://cran.r-project.org/bin/linux/ubuntu/README gives instructions which I have followed and written the summary above.
* http://cran.r-project.org/mirrors.html - list of mirrors for R

####PHP
Latest PHP gets stuck at GCC can not create executables error. After checking the config.log you will realise that it is an issue with gcc-v4.8.4. PHP5.6 needs >5 version of GCC. So there is no fix for this other than installing new GCC. 

So go to Software manager or do `apt-get install php5` \*

###Databases

####MySQL
Latest mysql folder gives you binaries. You need to put them at various places like binaries in bin folder of the download will go to /usr/bin. 

Easier way was to just install `apt-get install mysql-server` \*

###Softwares
####Git
use command `apt-get install git` \*

####Eclipse
The base ubuntu repository has a very old version of eclipse. So in case you dont want the old version, then follow the steps below.

Steps:

* Look online for eclipse and download the appropriate version.
* Go to folder /opt and un-tar it using `tar -zxvf \<path to tarball\>` \*
* create file eclipse.desktop which will basically create an executable in the start dropdown. It needs following fields - Name, Type, Exec, Terminal, Icon, Comment, NoDisplay, Categories. The file can be found in the folder.
* After creating eclipse.desktop there are two ways to add it to menu list:
	- `desktop-file-install eclipse.desktop` \*
	- copy and paste the file at `/usr/share/applications`

Now to test it run eclipse

####Apache
To install latest apache version idea is - Do not try this. For one reason Apache installation needs Apache Portable Runtime Library, and which does not install with out of the box version of GCC, it needs gcc-5 compiler where as the version available is gcc-v4.8.4. 

Updating GCC I have not tried that. Someday!