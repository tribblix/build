#!/bin/sh
#
# Problems with pod2man and -Werror
#
# uninstall TRIBlibtool, otherwise it gets linked against
#
zap uninstall TRIBlibtool
env PATH=/usr/perl5/5.22.0/bin:$PATH ${THOME}/build/dobuild squid-3.5.19 -P /opt/tribblix/squid -C "--disable-strict-error-checking --disable-static --disable-ltdl-install"
env PATH=/usr/perl5/5.22.0/bin:$PATH ${THOME}/build/genpkg TRIBblix-squid squid-3.5.19
