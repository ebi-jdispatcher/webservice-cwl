# Examples of CWL workflows using EBI Web Services and Sample Clients
Example of CWL implementation for consuming 
[EMBL-EBI Bioinformatics Web Services tools' clients](https://github.com/ebi-wp/webservice-clients).

## How to install cwltool
You will need cwl-runner ([cwltool](https://github.com/common-workflow-language/cwltool)) to run CWL descriptions. 
Official instructions on how to install cwltool are provided in https://github.com/common-workflow-language/cwltool

## Running CWL for EBI tools (requires local copy of the clients)

*Note:* Before running cwltool, you may want to edit the values for the parameters, including adding a required email address.

*Run NCBI BLAST+, Dbfetch, Clustal Omega and then Simple Phylogeny*
```
cwltool workflow-blast-clustalo-phylogeny.cwl inputs-blast-clustalo-phylogeny.yml
```

*Run NCBI BLAST+ and EBI Search (a.k.a. ebeye)*
```
cwltool workflow-blast-ebeye.cwl inputs-blast-ebeye.yml
```

*Run NCBI BLAST+ and Phobius*
```
cwltool workflow-blast-phobius.cwl inputs-blast-phobius.yml
```

*Run Dbfetch and Phobius*
```
cwltool workflow-fetch-phobius.cwl inputs-fetch-phobius.yml
```

*Run EMBOSS transeq, NCBI BLAST+, InterProScan5 and Clustal Omega*
```
cwltool workflow-transeq-blast-clustalo.cwl inputs-transeq-blast-clustalo.yml
```
