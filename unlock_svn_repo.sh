#!/bin/sh -e

. ./cfg.sh

svn propdel svn:sync-lock --revprop -r 0 "file://$WD/$1"
