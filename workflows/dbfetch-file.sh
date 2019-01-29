#/usr/bin/env sh
 cat ${1} | head -n ${2} | sed 's/SP\://g;' | tr '\n' ',' | perl ${3} ${4} ${5} - ${6} ${7}

 # position {1} should be set to accessions and position {2} should be set to numberAccessions
