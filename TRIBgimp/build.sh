#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# specify the build target so it picks up the correct assembler
#
${THOME}/build/dobuild -gnu -64only gimp-2.10.36 -C "--disable-python --with-bug-report-url=http://www.tribblix.org/feedback.html --build=x86_64-pc-solaris2.11"
${THOME}/build/genpkg TRIBgimp gimp-2.10.36
