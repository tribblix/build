#!/bin/sh
#
# check files end in a newline
#
for file in $*
do
    #
    # ignore zero-length files (like allowstatic)
    #
    if [ -s $file ]; then
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
    fi
done
