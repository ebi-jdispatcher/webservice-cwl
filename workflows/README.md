# Examples of CWL workflows using EBI Web Services and Sample Clients
Example of CWL implementation for consuming
[EMBL-EBI Bioinformatics Web Services tools' clients](https://github.com/ebi-wp/webservice-clients).

## How to install cwltool
You will need cwl-runner ([cwltool](https://github.com/common-workflow-language/cwltool)) to run CWL descriptions.
Official instructions on how to install cwltool are provided in https://github.com/common-workflow-language/cwltool

## Running CWL for EBI tools (requires local copy of the clients)

*Note:* Before running cwltool, you may want to edit the values for the parameters, including adding a required email address.
Running these CWL files **expects** [webservice-clients](https://github.com/ebi-wp/webservice-clients) directory to be
found alongside the `webservice-cwl` directory.

### Run NCBI BLAST+, Dbfetch, Clustal Omega and then Simple Phylogeny

Input string sequence -> blast search, output: ids -> dbfetch, output: protein sequences -> clustal omega, output: Multiple sequence alignment -> simple phylogeny, output: phylogeny tree

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-blast-clustalo-phylogeny.cwl) or test it yourself:

```
cwltool workflow-blast-clustalo-phylogeny.cwl inputs-blast-clustalo-phylogeny.yml
```

### Run NCBI BLAST+ and EBI Search (a.k.a. ebeye)

Input sequence string -> blast search, output: ids -> EBI search, output: structural homologs to original sequence

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-blast-ebeye.cwl) or test it yourself:

```
cwltool workflow-blast-ebeye.cwl inputs-blast-ebeye.yml
```

### Run NCBI BLAST+ and Phobius

Input sequence string -> blast search, output: protein sequence -> phobius, output: protein topology

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-blast-phobius.cwl) or test it yourself:

```
cwltool workflow-blast-phobius.cwl inputs-blast-phobius.yml
```

### Run Dbfetch and Phobius

Input sequence string -> fetch search, output: protein sequence -> phobius, output: protein topology

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-fetch-phobius.cwl) or test it yourself:

```
cwltool workflow-fetch-phobius.cwl inputs-fetch-phobius.yml
```

### Run EMBOSS transeq, NCBI BLAST+, InterProScan5 and Clustal Omega

Unknown DNA sequence file -> emboss_transeq, output: translated protein sequence -> blast search, output: ids -> dbfetch, output: protein sequences -> clustal omega, output: Multiple sequence alignment -> simple phylogeny, output: phylogeny tree
Additional output: translated protein sequence -> iprscan5, output: out file

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-transeq-blast-clustalo.cwl) or test it yourself:

```
cwltool workflow-transeq-blast-clustalo.cwl inputs-transeq-blast-clustalo.yml
```

### Run FASTA and Pratt

Input protein sequence file -> fasta, output: ids -> dbfetch, output: protein sequence -> pratt, output: patterns in unaligned sequences

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-fasta-pratt.cwl) or test it yourself:

```
cwltool workflow-fasta-pratt.cwl inputs-fasta-pratt.yml
```

### Run Dbfetch and HMMER3 hmmscan

Input sequence string -> dbfetch, output: protein sequence -> hmmer3_hmmscan, output: ids

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-fetch-hmmscan.cwl) or test it yourself:

```
cwltool workflow-fetch-hmmscan.cwl inputs-fetch-hmmscan.yml
```

### Run EMBOSS pepinfo, backtranseq and cpgplot

Input protein sequence file -> emboss_backtranseq, output: corresponding DNA sequence -> emboss_cpgplot, output: cpg island plot
Additional output: protein sequence -> emboss_pepinfo, output: amino acid properties

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-pepinfo-backtranseq-cpgplot.cwl) or test it yourself:

```
cwltool workflow-pepinfo-backtranseq-cpgplot.cwl inputs-pepinfo-backtranseq-cpgplot.yml
```

### Run HMMER3 phmmer and NCBI BLAST+

Input protein sequence file -> hmmer3_phmmer, output: ids -> dbfetch, output: protein sequence -> blast (multifasta to search all sequences), output: ids

Explore this workflow with [CWL viewer](https://view.commonwl.org/workflows/github.com/ebi-wp/webservice-cwl/blob/master/workflows/workflow-pepinfo-phmmer-blast.cwl) or test it yourself:

```
cwltool workflow-phmmer-blast.cwl inputs-phmmer-blast.yml
```
