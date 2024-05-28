#!/bin/sh
#
${THOME}/build/dobuild -64only grisbi-3.0.3 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBgrisbi grisbi-3.0.3
