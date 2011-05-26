#!/bin/bash -e

while [ 1 ];
do
	RWAS=`./svn_last_rev.sh "$1"`
	svnsync sync --non-interactive "$1" && break
	RNOW=`./svn_last_rev.sh "$1"`
	echo "Done $RWAS->$RNOW"
	if [ "$RWAS" -eq "$RNOW" ]; then
		break;
	else
		echo "One more try"
	fi
done
