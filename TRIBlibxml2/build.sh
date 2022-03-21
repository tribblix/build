#!/bin/sh
#
# we build TRIBlibxml2-python-* at the same time
#
# ***MUST have libtool installed or -nostdlib won't take***
#
env TRIBBLIX_LDFLAGS="-z direct -z defs -z ignore" ${THOME}/build/dobuild -64 libxml2-2.9.9 -C "--disable-static --with-pic --with-threads --without-lzma --without-python"
${THOME}/build/genpkg TRIBlibxml2 libxml2-2.9.9

# we need this for gnome-doc-utils
rm -fr /tmp/lxp
cd libxml2-2.9.9/python
python2.7 setup.py build
python2.7 setup.py install --root=/tmp/lxp
${THOME}/build/create_pkg TRIBlibxml2-python-27 /tmp/lxp
python2.7 setup.py clean
cd ../..

# python3.9 is 64-bit
rm -fr /tmp/lxp
cd libxml2-2.9.9-64bit/python
/usr/versions/python-3.9/bin/python3 setup.py build
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/lxp
${THOME}/build/create_pkg TRIBlibxml2-python-39 /tmp/lxp
/usr/versions/python-3.9/bin/python3 setup.py clean
cd ../..

rm -fr /tmp/lxp
