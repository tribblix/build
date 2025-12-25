#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Current-GopherVR-source
cd gophervr
gsed -i s:/usr/local/lib/hershey:/usr/share/lib/hershey: libvogl/hershey/src/htext.c
gsed -i s:/usr/local/lib/hershey:/usr/share/lib/hershey: libvogl/Makefile
cd gopher ; ./configure --prefix=/usr; cd ..
cd gopher/object ; gmake all ; cd ../..
cd libtracker; gmake MACHINE=linux ; cd ..
# Need to disable optimization in libvogl
cd libvogl; gmake linux LINUX_FLOAT="" LINUX_OPT="-g -DNO_MULTIBUF"; cd ..
# Need to force iso8859 for the fonts, in gophervr/burrower.c
cd gophervr
cp Imakefile.linux Imakefile
xmkmf -DHasGcc3=YES
gmake
cd ..
rm -fr /tmp/gvr
mkdir -p /tmp/gvr/usr/bin
mkdir -p /tmp/gvr/usr/share/lib/hershey
mkdir -p /tmp/gvr/usr/share/doc/gophervr
cp gophervr/gophervr /tmp/gvr/usr/bin
cp gophervr/futura.hfont /tmp/gvr/usr/share/lib/hershey
cp gophervr/gophervr.help /tmp/gvr/usr/share/doc/gophervr
${THOME}/build/create_pkg TRIBgophervr /tmp/gvr
rm -fr /tmp/gvr
