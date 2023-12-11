#!/bin/sh
#
# needs a preconf patch otherwise it fails to find libetpan
# the preconf patch also fixes up claws' incorrect notions of
# where the certificate bundle happens to live
#
zap uninstall TRIBlibcanberra
${THOME}/build/dobuild -64only claws-mail-4.2.0 -C "--disable-ldap --disable-dependency-tracking"
${THOME}/build/genpkg TRIBclaws-mail claws-mail-4.2.0
