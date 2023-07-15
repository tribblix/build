#!/bin/sh
#
${THOME}/build/dobuild -64only rdesktop-1.9.0 -C "--disable-credssp --disable-smartcard"
${THOME}/build/genpkg  TRIBrdesktop rdesktop-1.9.0
