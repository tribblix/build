#!/bin/sh
#
# the tgz is double-compressed
# gunzip varnish-6.0.7.tgz ; mv varnish-6.0.7.tar varnish-6.0.7.tar.gz
#
zap install TRIBdocutils-python-37
zap install TRIBsphinx-python-37
zap install TRIBlibedit

${THOME}/build/dobuild varnish-6.0.7 -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-3.7/bin/rst2man.py --with-rst2html=/usr/versions/python-3.7/bin/rst2html.py --with-sphinx-build=/usr/versions/python-3.7/bin/sphinx-build"
${THOME}/build/genpkg TRIBblix-varnish varnish-6.0.7
