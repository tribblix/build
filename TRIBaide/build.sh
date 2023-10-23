#!/bin/sh
#
# patch to disable pie
#
${THOME}/build/dobuild -64only aide-0.18.6
${THOME}/build/genpkg TRIBaide aide-0.18.6
