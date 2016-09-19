#!/bin/sh
#
${THOME}/build/unpack DBD-mysql-4.036
cd DBD-mysql-4.036
perl Makefile.PL --mysql_config=/opt/tribblix/mysql/bin/mysql_config
make
${THOME}/build/genpkg TRIBlib-perl-5-dbd-mysql
