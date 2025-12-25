#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# derived from the OI recipe and patches
#

env TRIBBLIX_CFLAGS="-O2 -D_POSIX_PTHREAD_SEMANTICS -DNDEBUG -DSQLITE_SECURE_DELETE -DSQLITE_ENABLE_DBSTAT_VTAB -DSQLITE_ENABLE_FTS3 -DUSE_PREAD -DHAVE_USLEEP -DHAVE_FDATASYNC -DHAVE_STATVFS -DSQLITE_ENABLE_UNLOCK_NOTIFY -DSQLITE_ENABLE_STAT2 -DSQLITE_ENABLE_STMT_SCANSTATUS" $THOME/build/dobuild -64 sqlite-autoconf-3440000 -C "--sysconfdir=/etc --enable-threadsafe --enable-shared --disable-static"

${THOME}/build/genpkg TRIBdatabase-sqlite-3 sqlite-autoconf-3440000
