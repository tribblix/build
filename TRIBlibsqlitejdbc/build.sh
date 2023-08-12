#!/bin/sh
#
# the sqlite-jdbc distribution includes native libraries for linux,
# mac and windows packaged up in the jar file. This package ships one
# for Tribblix so that it will work here too.
#
# this is completeky independent of any other piece of sqlite
#
git clone https://github.com/xerial/sqlite-jdbc
cd sqlite-jdbc
gmake native CC="gcc -m64"
# there's no install target, the fixinstall script will
# copy the library to the right place
${THOME}/build/genpkg TRIBlibsqlitejdbc
