#!/bin/sh
#
# Older (1.7) could build the dependencies for you, now you have to manually
# sort it all out
#
# Need to disable the LD_OPTIONS stuff else it all goes pear shaped
#
${THOME}/build/dobuild apr-1.5.2 -P /usr/versions/subversion-1.9 -L
${THOME}/build/dobuild apr-util-1.5.4 -P /usr/versions/subversion-1.9 -C --with-apr=../apr-1.5.2 -L
${THOME}/build/unpack serf-1.3.8
ln -s . apr-1.5.2/bin
ln -s . apr-util-1.5.4/bin
cd serf-1.3.8
scons APR=../apr-1.5.2 APU=../apr-util-1.5.4 PREFIX=/usr/versions/subversion-1.9 CPPFLAGS=-D__EXTENSIONS__ LINKFLAGS="-L../apr-1.5.2/.libs -L../apr-util-1.5.4/.libs -R/usr/versions/subversion-1.9/lib"
cd ..
${THOME}/build/dobuild subversion-1.9.6 -P /usr/versions/subversion-1.9 -C "--with-apr=../apr-1.5.2 --with-apr-util=../apr-util-1.5.4 --with-serf=../serf-1.3.8 CPPFLAGS=-D__EXTENSIONS__" -L
# symlinks so libtool stupid relinking works
cd apr-1.5.2
ln -s .libs/* .
cd ..
cd apr-util-1.5.4
ln -s .libs/* .
cd ..
# serf installed by fixinstall
${THOME}/build/genpkg TRIBv-subversion-19 subversion-1.9.6 apr-1.5.2 apr-util-1.5.4
# [phew]
