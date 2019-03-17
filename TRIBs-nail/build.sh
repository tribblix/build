#!/bin/sh
#
${THOME}/build/dobuild s-nail-14.9.13 -M "VAL_PREFIX=/usr VAL_SYSCONFDIR=/etc all"
${THOME}/build/genpkg TRIBs-nail s-nail-14.9.13
