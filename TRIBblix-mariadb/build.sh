#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only mariadb-10.11.14 -P /opt/tribblix/mariadb
${THOME}/build/genpkg TRIBblix-mariadb mariadb-10.11.14
