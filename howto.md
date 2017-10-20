# How to run each CWL with YML
This is a quick sample command to run a CWL with example parameters, defined in YML.

### How to run tcoffee

```
cwltools ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
cwl-runner ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
```

### How to run hmmer3 phmmer

```
cwltools ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
cwl-runner ./cwls/hmmer3_phmmer.cwl ./ymls/hmmer3_phmmer.yml
```

### How to run dbfetch_lwp.pl

```
dbfetch_lwp.pl fetchBatch UNIPROT 1433T_RAT,WAP_RAT xml