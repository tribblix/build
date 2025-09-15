#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

${THOME}/build/dobuild -64only varnish-7.7.3 -P /opt/tribblix/varnish -C "--with-rst2man=/usr/versions/python-3.12/bin/rst2man --with-rst2html=/usr/versions/python-3.12/bin/rst2html --with-sphinx-build=/usr/versions/python-3.12/bin/sphinx-build --disable-dependency-tracking CC=gcc"
${THOME}/build/genpkg TRIBblix-varnish varnish-7.7.3
