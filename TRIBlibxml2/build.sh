#!/bin/sh
#
# we build TRIBlibxml2-python at the same time
#
# ***MUST have libtool installed or -nostdlib won't take***
#
env TRIBBLIX_LDFLAGS="-z direct -z defs -z ignore" ${THOME}/build/dobuild -64 libxml2-2.9.3 -C "--disable-static --with-pic --with-threads --without-lzma --without-python"
${THOME}/build/genpkg TRIBlibxml2 libxml2-2.9.3
cd libxml2-2.9.3/python
python setup.py build
python setup.py install --root=/tmp/lxp
${THOME}/build/create_pkg TRIBlibxml2-python-27 /tmp/lxp
