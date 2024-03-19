#!/bin/sh
#

${THOME}/build/dobuild -64only varnish-7.4.3 -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-3.11/bin/rst2man.py --with-rst2html=/usr/versions/python-3.11/bin/rst2html.py --with-sphinx-build=/usr/versions/python-3.11/bin/sphinx-build --disable-dependency-tracking CC=gcc"
${THOME}/build/genpkg TRIBblix-varnish varnish-7.4.3
