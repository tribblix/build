#!/bin/sh
#
zap install TRIBdocutils-python-27
zap install TRIBlibedit
env PATH=/usr/gnu/bin:$PATH CPPFLAGS="-I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ${THOME}/build/dobuild varnish-4.1.10 -M -k -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-2.7/bin/rst2man.py --with-rst2html=/usr/versions/python-2.7/bin/rst2html.py"
${THOME}/build/genpkg TRIBblix-varnish varnish-4.1.10
