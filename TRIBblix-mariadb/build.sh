#!/bin/sh
#
#
#
${THOME}/build/cmbuild -64only mariadb-10.11.5 -P /opt/tribblix/mariadb
${THOME}/build/genpkg TRIBblix-mariadb mariadb-10.11.5
