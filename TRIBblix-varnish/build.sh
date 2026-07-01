#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

${THOME}/build/dobuild -64only varnish-8.0.2 -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-3.13/bin/rst2man --with-rst2html=/usr/versions/python-3.13/bin/rst2html --with-sphinx-build=/usr/versions/python-3.13/bin/sphinx-build --disable-dependency-tracking CC=gcc"
${THOME}/build/genpkg TRIBblix-varnish varnish-8.0.2
