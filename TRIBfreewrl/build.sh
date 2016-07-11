#!/bin/sh
#
${THOME}/build/dobuild freewrl-3.0.0 -C "--with-javascriptopt=stub --disable-npapi-sdk"
${THOME}/build/genpkg TRIBfreewrl freewrl-3.0.0
