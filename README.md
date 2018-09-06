# Common Workflow Language implementation for EBI Web Services
CWL implementation for consuming [EMBL-EBI Bioinformatics Web Services tools' clients](https://github.com/ebi-wp/webservice-clients).

## Directories
- **cwls** : cwl files for the EBI Web Service clients (using webservice-clients Docker container)
- **cwls_local_tools** : cwl files for the EBI Web Service clients (using bundled Perl clients - **To be deprecated soon!**)
- **sequence** : example sequence files for testing purpose only. It is predefined in the each cwl. You could use with your sequence.
- **tools** : a copy of EMBL-EBI Web Services tools' clients. Last versions available in [webservice-clients](https://github.com/ebi-wp/webservice-clients).
- **ymls** : yml files, defined parameters' values.


## Getting Started
### How to install cwltool
You will need cwl-runner ([cwltool](https://github.com/common-workflow-language/cwltool)) to run CWL descriptions. Official instructions on how to install cwltool are provided in https://github.com/common-workflow-language/cwltool

### How to install Docker
[Docker](https://www.docker.com/) installation instructions are provided in https://docs.docker.com/install/

### Running CWL for EBI tools (requires Docker)

You can find CWL definitions in [cwl](cwl) accompanied with predefined parameters defined in [ymls](ymls).  
Remember, before running cwl, you need to defined your own values for the parameters, including a required email address.

```
cwltool ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
```


### Running CWL for EBI tools using local Perl clients (does not require Docker)

_**Note:** this option will be deprecated soon!_  
You can find CWL definitions in [cwl_local_tools](cwl_local_tools) accompanied with predefined parameters defined in [ymls](ymls).  
Remember, before running cwl, you need to defined your own values for the parameters, including a required email address.


```
cwltool ./cwls_local_tools/tcoffee.cwl ./ymls/tcoffee.yml
```

## Contact and Support

If you have any problems, suggestions or comments for our services please
contact us via [EBI Support](http://www.ebi.ac.uk/support/index.php?query=WebServices).
