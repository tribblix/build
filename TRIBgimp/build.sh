#!/bin/sh
#
# Make sure libmng and aalib are installed
#
${THOME}/build/dobuild -gnu gimp-2.8.16 -C "--disable-python"
${THOME}/build/genpkg TRIBgimp gimp-2.8.16
