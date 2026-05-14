#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# zenmap requires pygtk, which we don't have
#
env CC=gcc ${THOME}/build/dobuild -64only nmap-7.99 -C "--without-zenmap --with-liblua=included --with-libpcre PYTHON=python3.13"
${THOME}/build/genpkg TRIBnmap nmap-7.99
