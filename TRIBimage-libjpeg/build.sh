#!/bin/sh
#
# actually libjpeg-turbo
# no need for the ijg v9 compatibility
#
${THOME}/build/cmbuild -64 libjpeg-turbo-3.0.2
${THOME}/build/genpkg TRIBimage-libjpeg libjpeg-turbo-3.0.2
