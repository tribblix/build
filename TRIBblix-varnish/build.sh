#!/bin/sh
#

${THOME}/build/dobuild -64only varnish-6.0.10 -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-3.9/bin/rst2man.py --with-rst2html=/usr/versions/python-3.9/bin/rst2html.py --with-sphinx-build=/usr/versions/python-3.9/bin/sphinx-build"
${THOME}/build/genpkg TRIBblix-varnish varnish-6.0.10
