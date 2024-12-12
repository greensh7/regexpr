#!/bin/bash

go build
if [ -s gregexpr2 ]; then
	strip -v --strip-unneeded gregexpr2
	upx --best gregexpr2
fi

exit 0
