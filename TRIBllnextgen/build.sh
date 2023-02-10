#!/bin/sh
#
# used by tilde
#
${THOME}/build/dobuild LLnextgen-0.5.5 -C CC=gcc
${THOME}/build/genpkg TRIBllnextgen LLnextgen-0.5.5
