#!/bin/sh
#
${THOME}/build/dobuild lynx2.8.9dev.17 -C "--with-ssl --sysconfdir=/etc"
${THOME}/build/genpkg TRIBlynx lynx2.8.9dev.17
