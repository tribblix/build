#!/bin/sh
#
# check files end in a newline
#
for file in $*
do
    #
    # force binaries, not builtins
    #
    nl=`/usr/bin/tail -1 $file|/usr/bin/wc -l`
    #
    # cheat to trim surrounding spaces
    #
    nl=$(( $nl ))
    case $nl in
	0)
	    echo "FAIL: $file"
	    ;;
    esac
done
