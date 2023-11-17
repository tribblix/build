#!/bin/sh
#
# you may have to rename the download
# mv ncftp-3.2.6-src.tar.xz ncftp-3.2.6.tar.xz
#
# by default, it will find clang if it's installed
# while not a problem, force gcc for consistency
#
env CC=gcc ${THOME}/build/dobuild -64only ncftp-3.2.6
${THOME}/build/genpkg TRIBncftp ncftp-3.2.6
