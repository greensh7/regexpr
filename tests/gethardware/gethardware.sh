#!/bin/bash

# Dependencies

if [ ! `which sed` ]; then
    echo
    echo "\"sed\" Stream Editor package dependency not met"
    exit 0
fi

# Required for using alternation in BASH
#shopt -s extglob

#rx='pp=fd:c,|\/fd:c|fd:c\/|(\/|,?pp=)fd:c$'
rx='<[^>]*>'

f=1
count=1
for f in "${vf[@]}"; do
    #sed -e 's/<[^>]*>//g' note.xml
    #xml_grep 'from' note.xml --text_only
    echo -e "Sed:\t\t"`sed -r "s/$rx//" <<< "$f"`
    echo

    ((++count))
done

exit 0
