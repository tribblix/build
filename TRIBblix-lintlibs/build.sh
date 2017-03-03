#!/bin/sh
#
# these are the lint libraries for those libraries in Tribblix
# that the illumos-gate lint build needs
#
# libz libxml2 libcrypto libssl libtspi
#
# recipe here sort of taken from omnios
#
# this is a *real* shell script, not a recipe, and you
# need to run it somewhere studio is installed, such as
# in an illumos-build zone
#


make_lintlibs() {
    LINTLIB=$1
    LINTLIBDIR=$2
    LINTINCDIR=$3
    LINTINCFILES=$4

    [[ -z ${LINTINCFILES} ]] && LINTINCFILES="*.h"

    cat <<EOF > ${DTMPDIR}/${LINTLIBDIR}/llib-l${LINTLIB}
/* LINTLIBRARY */
/* PROTOLIB1 */
#include <sys/types.h>
#undef _LARGEFILE_SOURCE
EOF
    cd ${LINTINCDIR}
	sh -c "eval /usr/gnu/bin/ls -U ${LINTINCFILES}" | \
	    sed -e 's/\(.*\)/#include <\1>/' >> ${DTMPDIR}/${LINTLIBDIR}/llib-l${LINTLIB}

    cd ${DTMPDIR}/${LINTLIBDIR}
    /opt/sunstudio12.1/bin/lint -nsvx -I${DESTDIR}${LINTINCDIR} \
	    -o ${LINTLIB} ${DTMPDIR}/${LINTLIBDIR}/llib-l${LINTLIB}

    cd ${DTMPDIR}/${LINTLIBDIR}/amd64
    /opt/sunstudio12.1/bin/lint -nsvx -I${DESTDIR}${LINTINCDIR} -m64 \
	    -o ${LINTLIB} ${DTMPDIR}/${LINTLIBDIR}/llib-l${LINTLIB}
}

DTMPDIR=/tmp/llbuild
rm -fr $DTMPDIR
mkdir -p $DTMPDIR/lib/amd64
mkdir -p $DTMPDIR/usr/lib/amd64

make_lintlibs z /lib /usr/include "{zconf,zlib}.h"
make_lintlibs tspi /usr/lib /usr/include "{tss,trousers}/*.h"
make_lintlibs crypto /lib /usr/include "openssl/!(ssl*|*tls*).h"
make_lintlibs ssl /lib /usr/include "openssl/{ssl,*tls}*.h"
make_lintlibs xml2 /usr/lib /usr/include/libxml2 "libxml/*.h"

${THOME}/build/create_pkg TRIBblix-lintlibs $DTMPDIR
cd
rm -fr $DTMPDIR
