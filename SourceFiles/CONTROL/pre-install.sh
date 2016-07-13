#!/bin/sh

PKG_CONFIG_DIR="$APKG_PKG_DIR/config"

case "$APKG_PKG_STATUS" in
	install)
		;;
	upgrade)
		$APKG_PKG_DIR/CONTROL/start-stop.sh stop #do this to ensure the settings are saved
		/bin/cp -rf $PKG_CONFIG_DIR $APKG_TEMP_DIR/
		;;
	*)
		;;
esac

exit 0
	
