#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the following are optional dependencies that we pull in for
# the pelican importer:
#
# BeautifulSoup4 lxml feedparser
#
# and pandoc, which makes this only useful on x86
#
${THOME}/build/pkg_pep518 TRIBpelican-python-312 pelican-4.11.0.post0
