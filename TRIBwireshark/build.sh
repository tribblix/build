#!/bin/sh
#
# this builds both the main wireshark package and the qt package
#
# need to explicitly tell it which qt as guessing is unreliable
#
env PATH=${PATH}:/usr/versions/Qt-4.8/bin:/usr/perl5/5.22.0/bin ${THOME}/build/dobuild -gnu wireshark-2.0.6 -C "--with-qt=4 -without-lua --with-gtk2"
${THOME}/build/genpkg TRIBwireshark wireshark-2.0.6
${THOME}/build/genpkg TRIBwireshark-qt wireshark-2.0.6
