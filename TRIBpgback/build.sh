#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# v2 is written in go; stick with v1 on SPARC
#
# everything is done by the fixit script
#
mkdir p
cd p
env GOPATH=`pwd` go install github.com/orgrim/pg_back@latest

#
# copy the binary
#
rm -fr /tmp/pgb
mkdir -p /tmp/pgb/usr/bin
cp bin/pg_back /tmp/pgb/usr/bin

#
# put in a sensible configuration file
#
mkdir -p /tmp/pgb/etc/postgresql
cp pkg/mod/github.com/orgrim/pg_back@v*/pg_back.conf /tmp/pgb/etc/postgresql
sed -i 's:bin_directory =:bin_directory = /opt/tribblix/postgres15/bin:' /tmp/pgb/etc/postgresql/pg_back.conf

${THOME}/build/create_pkg TRIBpgback /tmp/pgb
rm -fr /tmp/pgb
