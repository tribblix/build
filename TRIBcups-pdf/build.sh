#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack cups-pdf_3.0.2
# note that tarball and contents are slightly different names
cd cups-pdf-3.0.2/src
gcc -O -m64 -s cups-pdf.c -o cups-pdf -lcups
cd ..

rm -fr /tmp/xs

mkdir -p /tmp/xs/usr/lib/cups/backend
cp src/cups-pdf /tmp/xs/usr/lib/cups/backend
chmod 0700 /tmp/xs/usr/lib/cups/backend/cups-pdf

mkdir -p /tmp/xs/etc/cups
cp extra/cups-pdf.conf /tmp/xs/etc/cups
chmod 640 /tmp/xs/etc/cups/cups-pdf.conf

mkdir -p /tmp/xs/usr/share/cups/model
cp extra/CUPS-PDF_opt.ppd /tmp/xs/usr/share/cups/model/CUPS-PDF.ppd
chmod 444 /tmp/xs/usr/share/cups/model/CUPS-PDF.ppd

mkdir -p /tmp/xs/var/spool/cups-pdf/SPOOL

${THOME}/build/create_pkg TRIBcups-pdf /tmp/xs
rm -fr /tmp/xs
cd ..
