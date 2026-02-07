#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there are a lot of potential dependencies we could add, just
# declare the ones we already have available
#
# [cmdline] argcomplete progressbar
# also pypdf defusedxml distro python-debian
#
${THOME}/build/pkg_pep518 -N TRIBdiffoscope-python-312 diffoscope-312
