#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu pidgin-2.14.13 -C "--disable-gevolution --disable-meanwhile --disable-avahi --disable-nm --disable-cyrus-sasl"
${THOME}/build/genpkg TRIBpidgin pidgin-2.14.13
