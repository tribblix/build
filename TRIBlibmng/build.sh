#!/bin/sh
#
${THOME}/build/dobuild -64 libmng-2.0.3 -C --disable-static
${THOME}/build/genpkg TRIBlibmng libmng-2.0.3
