#!/bin/sh
#
${THOME}/build/dobuild -64only sox-14.4.2 -C "--disable-openmp --with-distro=Tribblix"
${THOME}/build/genpkg TRIBsox sox-14.4.2
