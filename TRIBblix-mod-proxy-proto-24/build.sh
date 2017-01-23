#!/bin/sh
#
# you need to have apache24 installed first
# there's no real integration, it's entirely up to the
# user to update httpd.conf appropriately
#
# the package name is proto rather than protocol to keep clear
# of the SVR4 package name length limit
#
# cd to a temporary location first
#
git clone https://github.com/roadrunner2/mod-proxy-protocol.git
cd mod-proxy-protocol
env PATH=/opt/tribblix/apache2/bin:$PATH apxs -c mod_proxy_protocol.c
rm -fr /tmp/mm1
mkdir -p /tmp/mm1/opt/tribblix/apache2/modules
env PATH=/opt/tribblix/apache2/bin:$PATH apxs -S LIBEXECDIR=/tmp/mm1/opt/tribblix/apache2/modules -i mod_proxy_protocol.la
$THOME/build/create_pkg TRIBblix-mod-proxy-proto-24 /tmp/mm1
cd ..
rm -fr /tmp/mm1
