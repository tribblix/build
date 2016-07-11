#!/bin/sh
#
# this builds both the main wireshark package and the qt package
#
env PATH=${PATH}:/usr/versions/Qt-4.8/bin:/usr/perl5/5.22.0/bin ${THOME}/build/dobuild -gnu wireshark-2.0.4 -C "--with-qt -without-lua --with-gtk2"
${THOME}/build/genpkg TRIBwireshark wireshark-2.0.4
${THOME}/build/genpkg TRIBwireshark-qt wireshark-2.0.4
