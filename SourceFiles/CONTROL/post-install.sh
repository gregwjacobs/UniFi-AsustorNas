#!/bin/sh

case "$APKG_PKG_STATUS" in
        install)
		ln -s "$APKG_REPO_DIR/mongodb/bin/mongod" "$APKG_PKG_DIR/bin/mongod"
		mkdir /share/Unifi/data
		ln -s /share/Unifi/data $APKG_PKG_DIR/data
                ;;
        upgrade)
		ln -s "$APKG_REPO_DIR/mongodb/bin/mongod" "$APKG_PKG_DIR/bin/mongod"
                ;;
esac

exit 0
