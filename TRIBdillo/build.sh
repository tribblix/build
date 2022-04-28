#!/bin/sh
#
${THOME}/build/dobuild -64only dillo-3.0.5 -C --enable-ssl
${THOME}/build/genpkg TRIBdillo dillo-3.0.5
