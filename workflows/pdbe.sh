#/usr/bin/env sh
SITE=https://www.ebi.ac.uk/pdbe/api/pdb/entry/summary/

list=$(grep ^[0-9][a-z0-9].. ${1})
for id in $list; do
    wget -O $id.txt ${SITE}${id}
done
