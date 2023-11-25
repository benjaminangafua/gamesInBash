#!/bin/bash

# head -n "$2" "$1"
# wc -l "$1"

if [ "$2" = "totalWords" ]
then
	wc "$1"
fi
