This is UniFi build for Linux/Unix-like system. It is not officially 
supported / regularly tested. 

It's basically a package that strips all of the native components

Limitations
===================
* Auto update (of UniFi controller) does not work
* Backup/Restore does not work (see FAQ)

System Requirements
===================
* mongoDB 1.6.5 (http://www.mongodb.org/downloads)
* Sun Java 6

Install
===================
1. unzip it to a directory you prefer, e.g. /path/to/UniFi
2. make sure you have mongod installed (out database server) for your platform
3. make sure /path/to/UniFi/bin/mongod points to the /path/to/mongod
4. to run it, 
	cd /path/to/UniFi/
	java -jar lib/ace.jar start
5. to stop it,
	cd /path/to/UniFi/
	java -jar lib/ace.jar stop


FAQ
===================
* How can I run UniFi Controller on different ports
	1. Make sure UniFi is not running
	2. modify /path/to/UniFi/data/system.properties
	3. restart UniFi

* How do I backup / restore?
	1. Make sure UniFi is not running
	2. for backup, tar/zip everything inside /path/to/UniFi/data
	   for restore, untar/unzip everything back to /path/to/UniFi/data
	3. restart UniFi

* How do I upgrade?
	1. make a backup
	2. download the new UniFi-linux.zip and re-install
	3. untar/unzip the backup file back
