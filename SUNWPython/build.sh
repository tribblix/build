#!/bin/sh
#
# Compat for SUNWvbox dependencies
#
rm -fr /tmp/c1
mkdir -p /tmp/c1
${THOME}/build/create_pkg SUNWPython /tmp/c1
rm -fr /tmp/c1
