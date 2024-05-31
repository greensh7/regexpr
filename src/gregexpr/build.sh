#!/bin/bash

go build
if [ -s gregexpr ]; then
	mv -v gregexpr gregexpr2
	strip -v --strip-unneeded gregexpr2
	#upx --best gregexpr2
fi

exit 0
