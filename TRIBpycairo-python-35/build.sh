#!/bin/sh
#
# I needed to add a symlink in /usr/versions/python-3.5/bin
# so that "python" works.
#
${THOME}/build/unpack pycairo-1.10.0
cd pycairo-1.10.0
env PATH=/usr/versions/python-3.5/bin:$PATH ./waf configure --prefix=/usr  --libdir=/usr/versions/python-3.5/lib
#
# OK, so now you have to edit 2 files
#
# .waf3-1.6.4-e3c1e08604b18a10567cfcd2d02eb6e6/waflib/Build.py
# you'll probably get pickle errors
# add a return on a line by itself immediately after store(self)
#
# python-config is a shell script, so calling it from python will fail
# remove conf.env.PYTHON+ from in front of it in
# .waf3-1.6.4-e3c1e08604b18a10567cfcd2d02eb6e6/waflib/Tools/python.py
#
env PATH=/usr/versions/python-3.5/bin:$PATH ./waf configure --prefix=/usr  --libdir=/usr/versions/python-3.5/lib
env PATH=/usr/versions/python-3.5/bin:$PATH ./waf build
rm -fr /tmp/pil
env PATH=/usr/versions/python-3.5/bin:$PATH ./waf install --destdir=/tmp/pil
${THOME}/build/create_pkg TRIBpycairo-python-35 /tmp/pil
rm -fr /tmp/pil
