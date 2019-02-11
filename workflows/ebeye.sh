#/usr/bin/env sh

# For default this is buidling the following perl command:
# perl ebeye_lwp.pl method (getReferencedEnteries) domain entryids referencedDomain fields

if [ $2 = "getDomainHierarchy" ]; then
  perl ${1} ${2} ""
  # 1= ebeye_lwp.pl client, 2= method (getDomainHierarchy)
fi
if [ $2 = "getDomainDetails" ]; then
  perl ${1} ${2} ${3} ""
  # 1= ebeye_lwp.pl client, 2= method (getDomainDetails), 3= domain
fi
if [ $2 = "getNumberOfResults" ]; then
  perl ${1} ${2} ${3} ${4}
  # 1= ebeye_lwp.pl client, 2= method (getNumberOfResults), 3= domain, 4= query
fi
if [ $2 = "getResults" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ""
  # 1= ebeye_lwp.pl client, 2= method (getResults), 3= domain, 4= query, 5= fields
fi
if [ $2 = "getFacetedResults" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ""
  # 1= ebeye_lwp.pl client, 2= method (getFacetedResults), 3= domain, 4= query, 5= fields
fi
if [ $2 = "getEntries" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ""
  # 1= ebeye_lwp.pl client, 2= method (getEntries), 3= domain, 4= entryids, 5= fields
fi
if [ $2 = "getDomainsReferencedInDomain" ]; then
  perl ${1} ${2} ${3} ""
  # 1= ebeye_lwp.pl client, 2= method (getDomainsReferencedInDomain), 3= domain
fi
if [ $2 = "getDomainsReferencedInEntry" ]; then
  perl ${1} ${2} ${3} ${4} ""
  # 1= ebeye_lwp.pl client, 2= method (getDomainsReferencedInEntry), 3= domain, 4= entryid
fi
if [ $2 = "getReferencedEntries" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ${6} ""
  # 1= ebeye_lwp.pl client, 2= method (getReferencedEntries), 3= domain, 4= entryids, 5= referencedDomain, 6= fields
fi
if [ $2 = "getTopTerms" ]; then
  perl ${1} ${2} ${3} ${4} ""
  # 1= ebeye_lwp.pl client, 2= method (getTopTerms), 3= domain, 4= field
fi
if [ $2 = "getMoreLikeThis" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ""
  # 1= ebeye_lwp.pl client, 2= method (getMoreLikeThis), 3= domain, 4= entryid, 5= fields
fi
if [ $2 = "getExtendedMoreLikeThis" ]; then
  perl ${1} ${2} ${3} ${4} ${5} ${6} ""
  # 1= ebeye_lwp.pl client, 2= method (getExtendedMoreLikeThis), 3= domain, 4= entryid, 5= targetedDomain, 6= fields
fi
if [ $2 = "getAutoComplete" ]; then
  perl ${1} ${2} ${3} ${4} ""
  # 1= ebeye_lwp.pl client, 2= method (getAutoComplete), 3= domain, 4= term
fi
