#!/bin/sh
#
# actually libjpeg-turbo
# no need for the ijg v9 compatibility
#
${THOME}/build/dobuild libjpeg-turbo-1.4.2
mv libjpeg-turbo-1.4.2 libjpeg-turbo-1.4.2-32
${THOME}/build/dobuild +64 libjpeg-turbo-1.4.2 -C "--host x86_64-pc-solaris"
mv libjpeg-turbo-1.4.2-32 libjpeg-turbo-1.4.2
${THOME}/build/genpkg TRIBimage-libjpeg libjpeg-turbo-1.4.2
