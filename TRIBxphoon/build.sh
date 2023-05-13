#!/bin/sh
#
${THOME}/build/unpack xphoon_14Aug2014
cd xphoon
sed -i s:OS_SYSV:SVR4: date_parse.c
# yes gsed for the newline
gsed -i 's:<sys/ioctl.h>:<sys/ioctl.h>\n#include <sys/termio.h>:' xphoon.c
xmkmf -DHasGcc3=YES
make
cd ..
${THOME}/build/genpkg TRIBxphoon xphoon
