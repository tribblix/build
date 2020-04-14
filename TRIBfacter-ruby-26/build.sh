#!/bin/sh
#
${THOME}/build/unpack facter-2.5.7
cd facter-2.5.7
rm -fr /tmp/ffa
/usr/versions/ruby-2.6/bin/ruby install.rb --destdir=/tmp/ffa
${THOME}/build/create_pkg TRIBfacter-ruby-26 /tmp/ffa
rm -fr /tmp/ffa
cd ..
