#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# This version requires pyxdg (TRIBxdg-python-312)
#
${THOME}/build/dobuild -64only fvwm-2.7.0 -C "--disable-bidi"
${THOME}/build/genpkg TRIBfvwm fvwm-2.7.0
