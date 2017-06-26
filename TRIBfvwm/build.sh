#!/bin/sh
#
# This version requires pyxdg (TRIBxdg-python-27)
#
${THOME}/build/dobuild fvwm-2.6.7 -C "--disable-bidi --disable-perllib"
${THOME}/build/genpkg TRIBfvwm fvwm-2.6.7
