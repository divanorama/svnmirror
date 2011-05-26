#!/bin/sh -e

. ./cfg.sh

NAME="codeswarm"
URL="http://codeswarm.googlecode.com/svn"

./init_repo.sh "$NAME" "$URL"
./do_sync_svn.sh "$NAME"
./svn_last_rev.sh "file:///$WD/$NAME"
