#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this module used to depend on sgmllib3k, but that's been replaced
# by feedparser-sgmllib which is private to feedparser, so package
# it together
#
# feedparser is built with setuptool, sgmllib with poetry
#
${THOME}/build/pkg_pep518 -N TRIBfeedparser-python-313 feedparser-6.0.14 feedparser_sgmllib-2.1.0
