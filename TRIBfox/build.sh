#!/bin/sh
#
# needs a couple of fixes
# src/FXFont.cpp cast arg of sqrt to float
# src/FXGUISignal.cpp #include <sys/filio.h>
#
${THOME}/build/dobuild fox-1.6.57
${THOME}/build/genpkg TRIBfox fox-1.6.57
