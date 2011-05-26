#!/bin/sh -e

svn info $1 | grep Revision | cut -d \  -f 2
