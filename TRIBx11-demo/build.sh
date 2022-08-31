#!/bin/sh
#
${THOME}/build/dobuild -64only ico-1.0.6
${THOME}/build/dobuild -64only xeyes-1.2.0
${THOME}/build/dobuild -64only xgc-1.0.5
${THOME}/build/dobuild -64only xlogo-1.0.5
${THOME}/build/genpkg TRIBx11-demo ico-1.0.6 xeyes-1.2.0 xgc-1.0.5 xlogo-1.0.5
