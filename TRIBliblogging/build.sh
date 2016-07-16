#!/bin/sh
#
${THOME}/build/dobuild liblogging-1.0.5 -C --disable-journal
${THOME}/build/genpkg TRIBliblogging liblogging-1.0.5
