#!/bin/sh
env PATH=/usr/gnu/bin:$PATH $THOME/build/dobuild -64 libIDL-0.8.14
$THOME/build/genpkg TRIBlibidl libIDL-0.8.14
