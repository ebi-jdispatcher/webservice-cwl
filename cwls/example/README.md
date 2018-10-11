# The workflow example of CWL, consuming EBI Web Services
Example of CWL implementation for consuming [EMBL-EBI Bioinformatics Web Services tools' clients](https://github.com/ebi-wp/webservice-clients).
(using webservice-clients Docker container)
## Directories
- **clustalo** : A cwl file for consuming the EBI Web Service clients's Clustal Omega
- **dbfetch** : A cwl file for consuming the EBI Web Service clients's dbfetch 
- **ncbiblast** : A cwl file for consuming the EBI Web Service clients's NCBI BLAST+
- **simple_phylogeny** : A cwl file for consuming the EBI Web Service clients's Simple Phylogeny
- **workflow** : A workflow cwl file for consuming all above

## Getting Started
### How to install cwltool
You will need cwl-runner ([cwltool](https://github.com/common-workflow-language/cwltool)) to run CWL descriptions. Official instructions on how to install cwltool are provided in https://github.com/common-workflow-language/cwltool

### How to install Docker
[Docker](https://www.docker.com/) installation instructions are provided in https://docs.docker.com/install/

### Running CWL for EBI tools (requires Docker)
You can find CWL definitions in [cwls](cwls) accompanied with predefined parameters defined in [ymls](ymls).  
Remember, before running cwl, you need to defined your own values for the parameters, including a required email address.

```
cwltool ./cwls/exmaple/workflow/sample.cwl
```

### Running CWL for EBI tools using local Perl clients (does not require Docker)

## Contact and Support

If you have any problems, suggestions or comments for our services please
contact us via [EBI Support](http://www.ebi.ac.uk/support/index.php?query=WebServices).
