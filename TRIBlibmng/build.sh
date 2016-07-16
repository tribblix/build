#!/bin/sh
#
${THOME}/build/dobuild -64 libmng-2.0.2 -C --disable-static
${THOME}/build/genpkg TRIBlibmng libmng-2.0.2
