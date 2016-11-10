#!/bin/sh
#
${THOME}/build/dobuild -64 aalib-1.4.0 -C --with-slang-driver=no
${THOME}/build/genpkg TRIBaalib aalib-1.4.0
