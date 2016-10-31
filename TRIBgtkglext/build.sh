#!/bin/sh
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild -64 gtkglext-1.2.0
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/genpkg TRIBgtkglext gtkglext-1.2.0
