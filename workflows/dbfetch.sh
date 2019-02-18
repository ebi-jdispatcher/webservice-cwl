#/usr/bin/env sh
client=${1}
method=${2}
database=${3}
accessions=${4}
numberAccessions=${5}
outformat=${6}
outstyle=${7}


if [ -f "${accessions}" ] ; then
  cat ${accessions} | head -n ${numberAccessions} | sed 's/SP\://g;' | tr '\n' ',' | perl ${client} ${method} ${database} - ${outformat} ${outstyle}
else
  perl ${client} ${method} ${accessions} ${outformat} ${outstyle}
fi
