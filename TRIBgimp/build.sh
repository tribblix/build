#!/bin/sh
#
# Make sure libmng and aalib are installed
#
${THOME}/build/dobuild -gnu gimp-2.8.18 -C "--disable-python --with-lcms=lcms2"
${THOME}/build/genpkg TRIBgimp gimp-2.8.18
