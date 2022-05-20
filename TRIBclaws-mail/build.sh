#!/bin/sh
#
# maybe reinstate perl once we have a 64-bit perl
#
zap uninstall TRIBlibcanberra
${THOME}/build/dobuild -64only claws-mail-4.1.0 -C "--disable-ldap --disable-dependency-tracking"
${THOME}/build/genpkg TRIBclaws-mail claws-mail-4.1.0
