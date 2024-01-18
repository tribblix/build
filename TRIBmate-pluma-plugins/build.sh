#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only pluma-plugins--1.26.0 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBmate-pluma-plugins pluma-plugins-1.26.0
