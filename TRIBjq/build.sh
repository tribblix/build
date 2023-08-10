#!/bin/sh
#
${THOME}/build/dobuild -64only jq-1.6 -C --with-oniguruma=builtin
${THOME}/build/genpkg TRIBjq jq-1.6
