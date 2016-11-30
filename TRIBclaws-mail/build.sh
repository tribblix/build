#!/bin/sh
#
zap uninstall TRIBlibcanberra
${THOME}/build/dobuild claws-mail-3.14.1 -C --disable-ldap
${THOME}/build/genpkg TRIBclaws-mail claws-mail-3.14.1
