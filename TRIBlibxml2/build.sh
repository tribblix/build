#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we build TRIBlibxml2-python-* at the same time
#
# ***MUST have libtool installed or -nostdlib won't take***
#
env TRIBBLIX_LDFLAGS="-z direct -z defs -z ignore" ${THOME}/build/dobuild -64 libxml2-2.9.14 -C "--disable-static --with-pic --with-threads --without-lzma --without-python"
${THOME}/build/genpkg TRIBlibxml2 libxml2-2.9.14

# python3.12 is 64-bit
rm -fr /tmp/lxp
cd libxml2-2.9.14-64bit/python
/usr/versions/python-3.12/bin/python3 setup.py build
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/lxp
${THOME}/build/create_pkg TRIBlibxml2-python-312 /tmp/lxp
/usr/versions/python-3.12/bin/python3 setup.py clean
cd ../..

rm -fr /tmp/lxp
