#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# postgres 16
#
${THOME}/build/dobuild +64only -P /opt/tribblix/postgres16 postgresql-16.7 -C "--without-readline --with-perl --with-openssl" -M world
${THOME}/build/genpkg -I install-world TRIBblix-postgres16 postgresql-16.7
