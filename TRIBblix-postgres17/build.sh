#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgres 17
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres17 postgresql-17.7 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres17 postgresql-17.7
