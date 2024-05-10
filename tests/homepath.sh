#!/bin/bash

#
# Replace the paths "/home/user", "C:\Users\user" and "\\Users\user"
# with "~"
#

re='^(/home|([a-zA-Z]:|\\)\\Users)(/|\\)[\w-]+'
../qregexpr "$re" '/home/user/devel' '~'
../gregexpr "$re" '/home/user/devel' '~'
../qregexpr "$re" 'C:\Users\user\devel' '~'
../gregexpr "$re" 'C:\Users\user\devel' '~'
../qregexpr "$re" '\\Users\user\devel' '~'
../gregexpr "$re" '\\Users\user\devel' '~'

exit 0

