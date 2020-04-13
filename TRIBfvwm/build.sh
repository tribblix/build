#!/bin/sh
#
# This version requires pyxdg (TRIBxdg-python-37)
#
${THOME}/build/dobuild fvwm-2.6.9 -C "--disable-bidi --disable-perllib"
${THOME}/build/genpkg TRIBfvwm fvwm-2.6.9
