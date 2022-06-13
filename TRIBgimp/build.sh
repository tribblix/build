#!/bin/sh
#
${THOME}/build/dobuild -gnu gimp-2.10.30 -C "--disable-python --with-bug-report-url=http://www.tribblix.org/feedback.html"
${THOME}/build/genpkg TRIBgimp gimp-2.10.30
