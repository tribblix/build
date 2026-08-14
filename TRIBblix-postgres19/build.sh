#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgres 19
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres19 postgresql-19beta3 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres19 postgresql-19beta3
