#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu pidgin-2.14.14 -C "--disable-gevolution --disable-meanwhile --disable-avahi --disable-nm --disable-cyrus-sasl"
${THOME}/build/genpkg TRIBpidgin pidgin-2.14.14
