#!/bin/sh
#

$THOME/build/dobuild -64only cups-filters-2.0rc2 -C --disable-avahi
${THOME}/build/genpkg TRIBcups-filters cups-filters-2.0rc2
