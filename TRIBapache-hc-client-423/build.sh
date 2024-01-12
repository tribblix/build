#!/bin/sh
#
# this is now incorrectly named, as we actually use 4.5.14
#
mkdir -p /tmp/hc
cd /tmp/hc
$THOME/build/unpack httpcomponents-client-4.5.14-bin
# yes the wrong directory name, but this is what's embedded
# in jkstat and jproc
mkdir -p usr/share/httpcomponents-client-4.2.3
mv lib/commons-codec*jar usr/share/httpcomponents-client-4.2.3
mv lib/httpcore-4*jar usr/share/httpcomponents-client-4.2.3
mv lib/httpclient-4*jar usr/share/httpcomponents-client-4.2.3
rm -fr javadoc lib
mv *.txt usr/share/httpcomponents-client-4.2.3
# and this is again what clients look for
cp $HOME/github/jkstat/lib/java/commons-logging-1.1.1.jar usr/share/httpcomponents-client-4.2.3
cd
$THOME/build/create_pkg TRIBapache-hc-client-423 /tmp/hc
