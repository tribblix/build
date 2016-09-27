#!/bin/sh
#
# actually libjpeg-turbo
# no need for the ijg v9 compatibility
#
${THOME}/build/dobuild libjpeg-turbo-1.5.1
mv libjpeg-turbo-1.5.1 libjpeg-turbo-1.5.1-32
${THOME}/build/dobuild +64 libjpeg-turbo-1.5.1 -C "--host x86_64-pc-solaris"
mv libjpeg-turbo-1.5.1-32 libjpeg-turbo-1.5.1
${THOME}/build/genpkg TRIBimage-libjpeg libjpeg-turbo-1.5.1
