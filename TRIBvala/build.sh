#!/bin/sh
#
${THOME}/build/dobuild -64 vala-0.56.1 -C --disable-valadoc
${THOME}/build/genpkg TRIBvala vala-0.56.1
