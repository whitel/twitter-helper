#!/bin/bash

FILE=$1
FLAG=$2
TEMPFILE="tempdata"

# convert from windows to unix format
dos2unix ${FILE}
# remove reply lines (optional)
if [[ ${FLAG} -eq nore ]]; then
    sed -i '/^- @/d' ${FILE}
fi
# reverse file by lines
tac ${FILE} > ${TEMPFILE}
mv ${TEMPFILE} ${FILE}
# remove icon link
sed -i 's/\!\[img\](https:\/\/www.allmytweets.net\/img\/extlink.png)//g' ${FILE}
# add quote to date
awk '$(NF-3)="【"$(NF-3)' ${FILE} | sed 's/$/】/g' > ${TEMPFILE}
mv ${TEMPFILE} ${FILE}
# add line seperator
sed -i '/^.*$/a\-----' ${FILE}

# refactor date format
# echo "June 7, 2011" | tr -d ',' | awk '{print "date -d\""$1FS$2FS$3"\" +%Y-%m-%d"}' | bash

