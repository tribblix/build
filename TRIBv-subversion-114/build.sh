#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Older (1.7) could build the dependencies for you, now you have to manually
# sort it all out
#
# Need to disable the LD_OPTIONS stuff else it all goes pear shaped
#
${THOME}/build/dobuild +64only apr-1.7.5 -P /usr/versions/subversion-1.14 -L
${THOME}/build/dobuild +64only apr-util-1.6.3 -P /usr/versions/subversion-1.14 -C --with-apr=../apr-1.7.5-64bit -L
${THOME}/build/unpack serf-1.3.10
ln -s . apr-1.7.5-64bit/bin
ln -s . apr-util-1.6.3-64bit/bin
cd serf-1.3.10
scons APR=../apr-1.7.5-64bit APU=../apr-util-1.6.3-64bit PREFIX=/usr/versions/subversion-1.14 CPPFLAGS="-m64 -D__EXTENSIONS__" LINKFLAGS="-m64 -L../apr-1.7.5-64bit/.libs -L../apr-util-1.6.3-64bit/.libs -R/usr/versions/subversion-1.14/lib"
#
# subversion uses the .pc file, but it has the final installed
# locations which would be wrong
#
cp -p serf-1.pc serf-1.pc.save
sed -i s:/usr/versions/subversion-1.14/lib:`pwd`: serf-1.pc
sed -i s:/usr/versions/subversion-1.14:`pwd`: serf-1.pc
sed -i s:/include/serf-1:: serf-1.pc
cd ..
${THOME}/build/dobuild +64only subversion-1.14.4 -P /usr/versions/subversion-1.14 -C "--with-apr=../apr-1.7.5-64bit --with-apr-util=../apr-util-1.6.3-64bit --with-serf=../serf-1.3.10 CPPFLAGS=-D__EXTENSIONS__ --with-lz4=internal --with-utf8proc=internal --without-gnome-keyring" -L
# symlinks so libtool stupid relinking works
cd apr-1.7.5-64bit
ln -s .libs/* .
cd ..
cd apr-util-1.6.3-64bit
ln -s .libs/* .
cd ..
# serf installed by fixinstall
${THOME}/build/genpkg TRIBv-subversion-114 subversion-1.14.4 apr-1.7.5 apr-util-1.6.3
# [phew]
