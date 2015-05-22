#!/bin/sh
#
# build + package wrapper
#

BUILD_DIR="/packages/localsrc/Tribblix/build"
HASREQUIRED=Y
HASFORBIDDEN=N
REQUIRED=" "
FORBIDDEN=" "

case $# in
    2)
	ACTIONS="$1"
	PKGTOBUILD="$2"
	;;
    *)
	echo "Usage: $0 build|package|both pkg_to_build"
	exit 2
	;;
esac

if [ ! -d ${BUILD_DIR}/${PKGTOBUILD} ]; then
    echo "ERROR: no such package ${PKGTOBUILD}"
    exit 2
fi

if [ ! -f ${BUILD_DIR}/${PKGTOBUILD}/build_opts ]; then
    echo "ERROR: no build_opts for package ${PKGTOBUILD}"
    exit 2
fi

if [ -f ${BUILD_DIR}/${PKGTOBUILD}/build_requires ]; then
    echo "Checking for required packages"
    for xpkg in `cat ${BUILD_DIR}/${PKGTOBUILD}/build_requires`
    do
	/usr/bin/pkginfo -q ${xpkg}
	FOUNDPKG=$?
	if [ $FOUNDPKG -ne 0 ]; then
	    HASREQUIRED=N
	    echo "Missing package $xpkg"
	    REQUIRED="${REQUIRED} $xpkg"
	fi
    done
    if [ "X${HASREQUIRED}" = "XY" ]; then
	echo " ... required packages OK"
    fi
fi
if [ "X${HASREQUIRED}" = "XN" ]; then
    echo "Issue the following to fix"
    echo "zap install $REQUIRED"
fi

if [ -f ${BUILD_DIR}/${PKGTOBUILD}/build_forbids ]; then
    echo "Checking for incompatible packages"
    for xpkg in `cat ${BUILD_DIR}/${PKGTOBUILD}/build_forbidden`
    do
	/usr/bin/pkginfo -q ${xpkg}
	FOUNDPKG=$?
	if [ $FOUNDPKG -eq 0 ]; then
	    HASFORBIDDEN=Y
	    echo "Incompatible package $xpkg installed"
	    FORBIDDEN="${FORBIDDEN} $xpkg"
	fi
    done
    if [ "X${HASFORBIDDEN}" = "XN" ]; then
	echo " ... incompatible packages OK"
    fi
fi
if [ "X${HASFORBIDDEN}" = "XY" ]; then
    echo "Issue the following to fix"
    echo "zap uninstall $FORBIDDEN"
fi

if [ "X${HASREQUIRED}" = "XN" ]; then
    echo "Aborting due to missing packages"
    exit 1
fi
if [ "X${HASFORBIDDEN}" = "XY" ]; then
    echo "Aborting due to incompatible packages"
    exit 1
fi


#
# the following can be set by the build_opts
# we just source it to let it override these variables
#
tribblix_64_opt=""
tribblix_gnu_opt=""
tribblix_S_opt=""
tribblix_P_opt=""
tribblix_C_opt=""
tribblix_M_opt=""
tribblix_I_opt=""
tribblix_J_opt=""
tribblix_env_opt=""
do_tribblix_S_opt=""
do_tribblix_P_opt=""
do_tribblix_C_opt=""
do_tribblix_M_opt=""
do_tribblix_I_opt=""
do_tribblix_J_opt=""
do_tribblix_env_opt=""

#
# this is the list of source files
#
tribblix_srcs=""

. ${BUILD_DIR}/${PKGTOBUILD}/build_opts

#
# most of the options should be specified without their flags,
# so add the flags here
#
if [ -n "$tribblix_S_opt" ]; then
    do_tribblix_S_opt="-S"
fi
if [ -n "$tribblix_P_opt" ]; then
    do_tribblix_P_opt="-P"
fi
if [ -n "$tribblix_C_opt" ]; then
    do_tribblix_C_opt="-C"
fi
if [ -n "$tribblix_M_opt" ]; then
    do_tribblix_M_opt="-M"
fi
if [ -n "$tribblix_I_opt" ]; then
    do_tribblix_I_opt="-I"
fi
if [ -n "$tribblix_J_opt" ]; then
    do_tribblix_J_opt="-J"
fi
if [ -n "$tribblix_env_opt" ]; then
    do_tribblix_env_opt="env"
fi

case $ACTIONS in
    'build')
	for this_src in $tribblix_srcs
	do
	    $do_tribblix_env_opt $tribblix_env_opt ${BUILD_DIR}/dobuild $tribblix_64_opt $tribblix_gnu_opt $this_src $do_tribblix_S_opt $tribblix_S_opt $do_tribblix_P_opt $tribblix_P_opt $do_tribblix_C_opt "$tribblix_C_opt" $do_tribblix_M_opt $tribblix_M_opt $do_tribblix_I_opt $tribblix_I_opt $do_tribblix_J_opt $tribblix_J_opt
	done
	;;
    'package')
	${BUILD_DIR}/genpkg ${PKGTOBUILD} $tribblix_srcs
	;;
    'both')
	for this_src in $tribblix_srcs
	do
	    $do_tribblix_env_opt $tribblix_env_opt ${BUILD_DIR}/dobuild $tribblix_64_opt $tribblix_gnu_opt $this_src $do_tribblix_S_opt $tribblix_S_opt $do_tribblix_P_opt $tribblix_P_opt $do_tribblix_C_opt "$tribblix_C_opt" $do_tribblix_M_opt $tribblix_M_opt $do_tribblix_I_opt $tribblix_I_opt $do_tribblix_J_opt $tribblix_J_opt
	done
	${BUILD_DIR}/genpkg ${PKGTOBUILD} $tribblix_srcs
	;;
    *)
	echo "ERROR: invalid subcommand $ACTIONS"
	echo "Usage: $0 build|package|both pkg_to_build"
	exit 2
	;;
esac
