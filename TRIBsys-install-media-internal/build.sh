#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# assuming the repo is checked out
#
# https://github.com/tribblix/tribblix-media
#
rm -fr /tmp/lt2
mkdir -p /tmp/lt2/sbin
( cd ${THOME}/tribblix-media ; tar cf - etc lib boot ) | ( cd /tmp/lt2 ; tar xf -)
gcc -o /tmp/lt2/sbin/listcd -ldevinfo ${THOME}/tribblix-media/listcd.c
gcc -o /tmp/lt2/sbin/listusb -ldevinfo ${THOME}/tribblix-media/listusb.c
strip /tmp/lt2/sbin/list*
${THOME}/build/create_pkg TRIBsys-install-media-internal /tmp/lt2
rm -fr /tmp/lt2
