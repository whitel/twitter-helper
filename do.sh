#!/bin/bash

FILE=$1

# convert from windows to unix format
dos2unix ${FILE}
# reverse file by lines
tac ${FILE} | cat > ${FILE}
# remove icon link
sed -i 's/\!\[img\](https:\/\/www.allmytweets.net\/img\/extlink.png)//g' ${FILE}
# add quote to date
awk '$(NF-3)="【"$(NF-3)' ${FILE} | sed 's/$/】/g' | cat > ${FILE}
# add line seperator
sed -i '/^.*$/a\-----' ${FILE}

# refactor date format
# echo "June 7, 2011" | tr -d ',' | awk '{print "date -d\""$1FS$2FS$3"\" +%Y-%m-%d"}' | bash

