#!/bin/sh
#
# must not have QT5 installed, else it will try and build against
# it and fail, but there's no easy way to turn the QT support off
#
${THOME}/build/dobuild gpgme-1.7.1
${THOME}/build/genpkg TRIBgpgme gpgme-1.7.1
