#!/bin/bash

# Substitute
#sed '/^9856,/s/[^,]*/Yes/3' sed-columns.csv
# Calculate 3rd col
#sed 's/[^,]*/$((&+400))/3;s/.*/echo "&"/e' sed-columns.csv
# Calculate 3rd col, row 10
sed -r '/^10[\t]/s/[^\t]*/$(((&-100)*2-132))/3;s/.*/echo "&"/e' sed-columns.tsv
# Swap columns 2,3 on row 2
#awk 'BEGIN { FS=OFS="\t" } { if ( $1==2 ) print $1,$3,$2; else print $1,$2,$3 }' sed-columns.tsv
# Calculate 3rd col, row 10
#awk 'BEGIN { FS=OFS="\t" } { if ( $1==10 ) print $1,$2,($3-100)*2-132; else print $1,$2,$3 }' sed-columns.tsv

exit 0
