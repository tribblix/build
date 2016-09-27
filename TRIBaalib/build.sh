#!/bin/sh
#
${THOME}/build/dobuild aalib-1.4.0 -C --with-slang-driver=no
${THOME}/build/genpkg TRIBaalib aalib-1.4.0
