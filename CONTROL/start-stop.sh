#!/bin/sh

PKG_NAME="$APKG_PKG_NAME"
PKG_DIR="/usr/local/AppCentral/unifi"
RUN_AS="admin:administrators"
REPOS_DIR="$PKG_DIR/repository"

umask 0 
#crude fix as the PATH variable isn't properly setup yet on boottime
export PATH="${PATH:+$PATH:}/usr/local/bin"
export LD_LIBRARY_PATH="/usr/local/lib"
export LANG=en_US.UTF-8

case "$1" in
  start)
	/bin/echo "Starting $PKG_NAME... "
	java -jar $PKG_DIR/UniFi/lib/ace.jar start	
  ;;
	
  stop)
	/bin/echo "Shutting down $PKG_NAME... "
	java -jar $PKG_DIR/UniFi/lib/ace.jar stop	
  ;;
		
  restart)
	$0 stop
	/bin/sleep 10
	$0 start
	RETVAL=$?
  ;;
  *)
	/bin/echo "Usage: $0 {start|stop|restart}"
	
esac

exit 0
