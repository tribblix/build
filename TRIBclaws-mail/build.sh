#!/bin/sh
#
#
zap uninstall TRIBlibcanberra
${THOME}/build/dobuild -64only claws-mail-4.1.1 -C "--disable-ldap --disable-dependency-tracking"
${THOME}/build/genpkg TRIBclaws-mail claws-mail-4.1.1
