#!/bin/sh
#
# uninstall TRIBlibtool, otherwise it gets linked against
#
# build with -k because although it correctly detects that it can't build
# with kerberos, it still tries to build the kerberos tests, which it can't
#
zap uninstall TRIBlibtool
${THOME}/build/dobuild -64only squid-5.5 -P /opt/tribblix/squid -C "--with-gnutls --disable-static --disable-ltdl-install" -M -k
${THOME}/build/genpkg TRIBblix-squid squid-5.5
