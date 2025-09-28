#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgres 18
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres18 postgresql-18.0 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres18 postgresql-18.0
