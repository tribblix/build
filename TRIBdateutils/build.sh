#!/bin/sh
#
${THOME}/build/dobuild -64only dateutils-0.4.11 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBdateutils dateutils-0.4.11
