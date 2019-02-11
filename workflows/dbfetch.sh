#/usr/bin/env sh

if [ -f "${1}" ] ; then
  cat ${1} | head -n ${2} | sed 's/SP\://g;' | tr '\n' ',' | perl ${3} ${4} ${5} - ${6} ${7}
  # File input
  # position {1} should be set to accessions and position {2} should be set to numberAccessions
  # 3 is the dbfetch perl client, 4= method, 5= database etc
else
  perl ${2} ${3} ${1} ${4} ${5}
  # string input
  # 1 is accessions, 2 is perl cleint, 3 is method etc 
fi
