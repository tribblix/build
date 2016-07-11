#!/bin/sh
#
zap install TRIBimlib2
env TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/dobuild openbox-3.6.1
${THOME}/build/dobuild obconf-2.0.4
${THOME}/build/genpkg TRIBopenbox openbox-3.6.1 obconf-2.0.4
# [then install and repeat so obconf links against this install of openbox]
