#!/bin/bash

#
# Display only the filenames from the log file
#

# Using the PERL \K "Keep out"
 grep -Po '.+/\K[\w.-]+' filename.log
perl -ne '/.+\/\K[\w.-]+/ && print "$&\n"' filename.log
echo
# Using lookaround assertions
 grep -Po '(?<=/)[\w.-]+(?=`)' filename.log
perl -ne '/(?<=\/)[\w.-]+(?=`)/ && print "$&\n"' filename.log
echo

exit 0

