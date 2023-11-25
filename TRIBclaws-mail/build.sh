#!/bin/sh
#
# needs a preconf patch otherwise it fails to find libetpan
#
zap uninstall TRIBlibcanberra
${THOME}/build/dobuild -64only claws-mail-4.2.0 -C "--disable-ldap --disable-dependency-tracking"
${THOME}/build/genpkg TRIBclaws-mail claws-mail-4.2.0
