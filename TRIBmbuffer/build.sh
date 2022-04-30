#!/bin/sh
#
# depends on libgcrypt, but via dlopen rather than being linked in
#
${THOME}/build/dobuild -64only mbuffer-20220418 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBmbuffer mbuffer-20220418
