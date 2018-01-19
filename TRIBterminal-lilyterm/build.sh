#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/dobuild LilyTerm-0.9.9.4
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBterminal-lilyterm LilyTerm-0.9.9.4
