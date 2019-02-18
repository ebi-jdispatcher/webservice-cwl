#/usr/bin/env sh
SITE=http://www.ebi.ac.uk/ebisearch/ws/rest/
domain=${1}
query=${2}
fields=${3}
format=${4}

curl -X GET --header 'Accept: text/plain' ${SITE}${domain}?query=${query}'&'fields=${fields}'&'format=${format}
