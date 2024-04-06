#!/bin/sh
#
# This version requires pyxdg (TRIBxdg-python-311)
#
${THOME}/build/dobuild -64only fvwm-2.7.0 -C "--disable-bidi --disable-perllib"
${THOME}/build/genpkg TRIBfvwm fvwm-2.7.0
