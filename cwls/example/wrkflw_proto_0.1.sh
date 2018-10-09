#!/bin/sh
#
# get some arguments from the command line


### Usage message ###
usage() {
    cat <<EOF
Usage:
  $scriptName -e <yourEmail> -s <sequence>
Example
  $scriptname -e support@ebi.ac.uk -s uniprot:wap_rat
  $scriptname -e support@ebi.ac.uk -s myseq.txt
  $scriptname -h

EOF
}

# parse command line
set -- `getopt e:s:h $*`
# check result of parsing
if [ $? != 0 ]; then
 usage
 exit 1
fi
while [ $1 != -- ]; do
  case $1 in
  -e) # email
  shift
  email=$1
  ;;
  -s) # sequence
  shift
  inputSeq=$1
  ;;
  -h) # help/usage
  usage
  exit 0
 esac
 shift
done


# call blast+
echo "Running Blast+ using uniprotkb_swissprot..."
echo "We just want to get the hit id's"
echo "Running: ./ncbiblast_lwp.pl --email $email --program blastp --database uniprotkb_swissprot --stype protein --sequence $inputSeq --outformat ids --outfile $$"
../ncbiblast/ncbiblast_lwp.pl --email $email --program blastp --database uniprotkb_swissprot --stype protein --sequence $inputSeq --outformat ids --outfile $$

# create input file for clustal omega

touch $$.fasta

# get top 20 matches (sequence) from blast+ result into input file for clustal omega using dbfetch
 
echo "Getting sequences for top 20 best hits from blast+ job..."
echo "Using dbfetch web service to get the sequences..."
echo "Running: cat $$.ids.txt | head -20 | sed 's/SP\://g;'| tr '\\n' ',' | ./dbfetch_lwp.pl fetchBatch uniprot - fasta raw >> $$.fasta"
#cat $$.ids.txt | head -20 | sed 's/SP\://g;'| tr '\n' ',' | ../dbfetch_lwp.pl fetchBatch uniprot - fasta raw >> $$.fasta

# call clustal omega - use default to get all output files
# we only want the alignment file

echo "Now we use the file from above to run Clustal Omega..."
echo "Running: ./clustalo_lwp.pl --email $email --sequence $$.fasta --outformat aln-clustal --outfile $$"
../clustalo/clustalo_lwp.pl --email $email --sequence 181.fasta --outformat aln-clustal --outfile $$

# call simple_phylogeny use default
echo "Now we use the MSA file (the .aln-clustal file) and send to simple_phylogeny to get a Neighbor-Joining tree"
echo "Running: ./simple_phylogeny_lwp.pl --email $email --sequence $$.aln-clustal.clustal --outformat tree --outfile $$"
../simple_phylogeny/simple_phylogeny_lwp.pl --email $email --sequence $$.aln-clustal.clustal --outformat tree --outfile $$
echo " "
echo "This is the tree file:"
cat $$.tree.ph
#
done:
 echo "Finished - remember to clean up!"







