#!/bin/sh
#
env TRIBBLIX_CXXFLAGS=-Wno-narrowing TRIBBLIX_LDFLAGS=-lXpm ${THOME}/build/dobuild qvwm-1.1.12-10-IKu
${THOME}/build/genpkg TRIBqvwm qvwm-1.1.12-10-IKu
