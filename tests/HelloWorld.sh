#!/bin/bash

echo "Lookaround tests using positive lookbehind/lookahead; HelloWorld => Hello-World"
rx='(?<=[a-z])(?=[A-Z])'
text='HelloWorld'
echo "Text:              $text"
m=`grep -Pom1 "$rx" <<< "$text"`
echo "BASH grep match:    ${m//$'\n'/ }"
echo
echo "Perl:              "`perl -pe "s/$rx/-/" <<< "$text"`
echo "Qt 5.15.14:        "`../qregexpr "$rx" "$text" '-'`
echo "Go 1.21.6 regexp2: "`../gregexpr2 "$rx" "$text" '-'`
echo "Python:            "`../pregexpr.py "$rx" "$text" '-'`
echo "Javascript:        "`node ../jsregexpr.js "$rx" "$text" '-'`
echo "Java:              "`( cd ../src/jregexpr; java jregexpr "$rx" "$text" '-')`
echo

echo "Lookaround tests using positive lookbehind/lookahead"
rx='(?<=")\w+(?=")'
text='"Hello" how are you doing "World"?'
echo "Text:              $text"
m=`grep -Pom1 "$rx" <<< "$text"`
echo "BASH grep match:    ${m//$'\n'/ }"
echo
echo "Perl:              "`perl -pe "s/$rx//g" <<< "$text"`
echo "Qt 5.15.14:        "`../qregexpr "$rx" "$text"`
echo "Go 1.21.6 regexp2: "`../gregexpr2 "$rx" "$text"`
echo "Python:            "`../pregexpr.py "$rx" "$text"`
echo "Javascript:        "`node ../jsregexpr.js "$rx" "$text"`
echo "Java:              "`( cd ../src/jregexpr; java jregexpr "$rx" "$text" )`
echo

echo "Lookaround tests using negative lookbehind/lookahead"
rx='(?<!")\b\w+\b(?!")'
echo "Text:              $text"
m=`grep -Pom1 "$rx" <<< "$text"`
echo "BASH grep match:    ${m//$'\n'/ }"
echo
echo "Perl:              "`perl -pe "s/$rx//g" <<< "$text"`
echo "Qt 5.15.14:        "`../qregexpr "$rx" "$text"`
echo "Go 1.21.6 regexp2: "`../gregexpr2 "$rx" "$text"`
echo "Python:            "`../pregexpr.py "$rx" "$text"`
echo "Javascript:        "`node ../jsregexpr.js "$rx" "$text"`
echo "Java:              "`( cd ../src/jregexpr; java jregexpr "$rx" "$text" )`
echo

exit 0
