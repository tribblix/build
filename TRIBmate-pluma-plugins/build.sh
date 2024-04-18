#!/bin/sh
#
${THOME}/build/dobuild +gnu -64only pluma-plugins-1.26.0 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBmate-pluma-plugins pluma-plugins-1.26.0
