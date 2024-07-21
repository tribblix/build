#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/dvp
mkdir -p /tmp/dvp/usr/bin
cd /tmp/dvp/usr/bin
wget https://raw.github.com/soxofaan/duviz/master/duviz.py
ln -s duviz.py duviz
chmod a+x duviz.py
sed -i 's:/usr/bin/env python:/usr/bin/python3.12:' duviz.py
${THOME}/build/create_pkg TRIBduviz /tmp/dvp
cd
rm -fr /tmp/dvp
