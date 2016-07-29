#!/bin/sh

case "$APKG_PKG_STATUS" in
        install)
		ln -s "$APKG_REPO_DIR/mongodb/bin/mongod" "$APKG_PKG_DIR/bin/mongod"
		mkdir /share/MongoDB/unifi
		mkdir /share/MongoDB/unifi/db
		ln -s /share/MongoDB/unifi/db $APKG_PKG_DIR/data/db
                ;;
        upgrade)
		ln -s "$APKG_REPO_DIR/mongodb/bin/mongod" "$APKG_PKG_DIR/bin/mongod"
                ;;
esac

exit 0
