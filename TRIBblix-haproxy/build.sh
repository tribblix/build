#!/bin/sh
#
# haproxy - add smf wrapper
#
${THOME}/build/unpack haproxy-1.7.14
cd haproxy-1.7.14
#fix only necessary for lua
# gsed -i s:-Wl,--export-dynamic:: Makefile
gmake -j 4 TARGET=solaris USE_PCRE=1 PCRE_INC=/usr/include/pcre USE_OPENSSL=1 ARCH=64
# or with lua support
# gmake TARGET=solaris USE_PCRE=1 PCRE_INC=/usr/include/pcre USE_OPENSSL=1 USE_LUA=1
git clone https://github.com/mmalecki/haproxy-smf-wrapper.git
cd haproxy-smf-wrapper
gmake CC="gcc -m64"
cd ..
rm -fr /tmp/h1
mkdir -p /tmp/h1/opt/tribblix/haproxy/bin /tmp/h1/opt/tribblix/haproxy/doc /tmp/h1/opt/tribblix/haproxy/man/man1
cp haproxy /tmp/h1/opt/tribblix/haproxy/bin
cp haproxy-smf-wrapper/haproxy-smf-wrapper /tmp/h1/opt/tribblix/haproxy/bin
cp LICENSE doc/configuration.txt doc/gpl.txt doc/lgpl.txt /tmp/h1/opt/tribblix/haproxy/doc
echo "See https://github.com/mmalecki/haproxy-smf-wrapper" > /tmp/h1/opt/tribblix/haproxy/doc/README.smf-wrapper
cp doc/haproxy.1 /tmp/h1/opt/tribblix/haproxy/man/man1
${THOME}/build/create_pkg TRIBblix-haproxy /tmp/h1
rm -fr /tmp/h1
