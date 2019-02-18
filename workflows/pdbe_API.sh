#/usr/bin/env sh
SITE=https://www.ebi.ac.uk/pdbe/api/pdb/entry/summary/

list=$(grep ^[0-9][a-z0-9].. ${1})
for id in $list; do
curl -X GET --header 'Accept: text/plain' ${SITE}${id} -o "$id.txt"
done
