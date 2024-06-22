#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# }}}
#
# Copyright 2024 Peter Tribble
#

#
# this script unpacks an ISO image and creates an environment suitable
# for booting using ipxe
#
# see http://ptribble.blogspot.co.uk/2017/06/installing-tribblix-on-vultr-using-ipxe.html for an example
#

REPODIR=/var/repo
ISODIR=${REPODIR}/iso

case $# in
    1)
	RELVER="$1"
	;;
    2)
	RELVER="$1"
	ISODIR="$2"
	;;
    *)
	echo "Usage: $0 release [iso_directory]"
	exit 1
	;;
esac

#
# naming is always an interesting problem
#
TRIBNAME=tribblix
case $RELVER in
    *lx*)
	TRIBNAME=omnitribblix
	;;
    r151*)
	TRIBNAME=omniosce
	;;
esac

#
# sanity check
#
ISOFILE=${ISODIR}/${TRIBNAME}-${RELVER}.iso
if [ ! -f "${ISOFILE}" ]; then
    echo "Unable to find iso file ${ISOFILE}"
    exit 1
fi

RELNAME=${RELVER/0m/m}
case $(/bin/id -u) in
    0)
	TDIR=/mnt$RELVER
	;;
    *)
	echo "You must be root to run this script"
	exit 1
	;;
esac

if [ -d "${REPODIR}/${RELNAME}" ]; then
    echo "Directory ${REPODIR}/${RELNAME} already exists"
fi

LDEV=$(/usr/sbin/lofiadm -a "${ISOFILE}")
mkdir -p "$TDIR"
mount -F hsfs -o ro "${LDEV}" "$TDIR"

#
# are the files where we expect them
#
if [ -f "${TDIR}/platform/i86pc/boot_archive" ]; then
    #
    # this is what Tribblix looks like
    #
    mkdir -p "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64"
    cp "${TDIR}/platform/i86pc/boot_archive" "${REPODIR}/${RELNAME}/platform/i86pc"
    cp "${TDIR}/platform/i86pc/kernel/amd64/unix" "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64/unix"
    mv "${REPODIR}/${RELNAME}/platform/i86pc/boot_archive" "${REPODIR}/${RELNAME}/platform/i86pc/boot_archive.gz"
    gunzip "${REPODIR}/${RELNAME}/platform/i86pc/boot_archive.gz"
    chmod a+r "${REPODIR}/${RELNAME}/platform/i86pc/boot_archive"
    chmod a+r "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64/unix"
    cat > "${REPODIR}/${RELNAME}/ipxe.txt" <<EOF
#!ipxe
dhcp
kernel /${RELNAME}/platform/i86pc/kernel/amd64/unix
initrd /${RELNAME}/platform/i86pc/boot_archive
boot
EOF
elif [ -f "${TDIR}/platform/i86pc/amd64/boot_archive.gz" ]; then
    #
    # OmniOSce is slightly different; the boot archive on media
    # has the 64-bit path and the .gz suffix
    #
    mkdir -p "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64"
    mkdir -p "${REPODIR}/${RELNAME}/platform/i86pc/amd64"
    cp "${TDIR}/platform/i86pc/amd64/boot_archive.gz" "${REPODIR}/${RELNAME}/platform/i86pc/amd64"
    cp "${TDIR}/platform/i86pc/kernel/amd64/unix" "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64/unix"
    gunzip "${REPODIR}/${RELNAME}/platform/i86pc/amd64/boot_archive.gz"
    chmod a+r "${REPODIR}/${RELNAME}/platform/i86pc/amd64/boot_archive"
    chmod a+r "${REPODIR}/${RELNAME}/platform/i86pc/kernel/amd64/unix"
    cat > "${REPODIR}/${RELNAME}/ipxe.txt" <<EOF
#!ipxe
dhcp
kernel /${RELNAME}/platform/i86pc/kernel/amd64/unix
initrd /${RELNAME}/platform/i86pc/amd64/boot_archive
boot
EOF
fi

#
# clean up
#
umount "$TDIR"
rmdir "$TDIR"
/usr/sbin/lofiadm -d "${LDEV}"
