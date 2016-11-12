#!/bin/sh
#
# used by claws mail and samba
#
${THOME}/build/dobuild -64 libarchive-3.2.2
${THOME}/build/genpkg TRIBlibarchive libarchive-3.2.2
