#!/bin/sh
#
${THOME}/build/dobuild rdesktop-1.8.6 -C "--disable-credssp --disable-smartcard"
${THOME}/build/genpkg  TRIBrdesktop rdesktop-1.8.6
