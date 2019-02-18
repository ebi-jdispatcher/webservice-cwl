#/usr/bin/env sh

client=${1}
method=${2}
domain=${3}
entryids=${4}
refdomain=${5}
fields=${6}
query=${7}
targetdomain=${8}
term=${9}

if [ ${method} = "getDomainHierarchy" ]; then
  perl ${client} ${method} ""
fi
if [ ${method} = "getDomainDetails" ]; then
  perl ${client} ${method} ${domain} ""
fi
if [ ${method} = "getNumberOfResults" ]; then
  perl ${client} ${method} ${domain} ${query}
fi
if [ ${method} = "getResults" ]; then
  perl ${client} ${method} ${domain} ${query} ${fields} ""
fi
if [ ${method} = "getFacetedResults" ]; then
  perl ${client} ${method} ${domain} ${query} ${fields} ""
fi
if [ ${method} = "getEntries" ]; then
  perl ${client} ${method} ${domain} ${entryids} ${fields} ""
fi
if [ ${method} = "getDomainsReferencedInDomain" ]; then
  perl ${client} ${method} ${domain} ""
fi
if [ ${method} = "getDomainsReferencedInEntry" ]; then
  perl ${client} ${method} ${domain} ${entryids} ""
fi
if [ ${method} = "getReferencedEntries" ]; then
  perl ${client} ${method} ${domain} ${entryids} ${refdomain} ${fields} ""
fi
if [ ${method} = "getTopTerms" ]; then
  perl ${client} ${method} ${domain} ${fields} ""
fi
if [ ${method} = "getMoreLikeThis" ]; then
  perl ${client} ${method} ${domain} ${entryids} ${fields} ""
fi
if [ ${method} = "getExtendedMoreLikeThis" ]; then
  perl ${client} ${method} ${domain} ${entryids} ${targetdomain} ${fields} ""
fi
if [ ${method} = "getAutoComplete" ]; then
  perl ${client} ${method} ${domain} ${term} ""
fi
