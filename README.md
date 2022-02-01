# Common Workflow Language implementation for EBI Web Services
CWL implementation for consuming [EMBL-EBI Bioinformatics Web Services tools' clients](https://github.com/ebi-wp/webservice-clients).
These CWL files are generated from the EBI Job Dispatcher Web Services (XML) description with
[https://github.com/ebi-wp/webservice-cwl-generator](https://github.com/ebi-wp/webservice-cwl-generator)

## Contents
- **cwls** : cwl files for the EBI Web Service clients (using Python clients
from [webservice-clients](https://github.com/ebi-wp/webservice-clients))
- **cwls-docker** : cwl files for the EBI Web Service clients
(using Python clients from [webservice-clients](https://github.com/ebi-wp/webservice-clients) Docker image)
- **jsons** : example json files for defining input values for parameters
- **sequence** : example sequence files for testing
- **workflows** : a set of workflows to highlight the use of the clients
- **ymls** : example yml files for defining input values for parameters


## Getting Started
### How to install cwltool
You will need cwl-runner ([cwltool](https://github.com/common-workflow-language/cwltool)) to run CWL descriptions.
Official instructions on how to install cwltool are provided in https://github.com/common-workflow-language/cwltool

### How to install Docker (optional)
[Docker](https://www.docker.com/) installation instructions are provided in https://docs.docker.com/install/

### Running CWL for EBI tools using local Python clients (does not require Docker)

You can find CWL definitions in [cwls](cwls) accompanied with predefined parameters defined in [ymls](ymls).
Running these CWL files **expects** [webservice-clients](https://github.com/ebi-wp/webservice-clients) directory to be
found alongside the `webservice-cwl` directory.

*Note:* Before running cwltool, you need to defined your own values for the `sequence` (or `asequence` plus `bsequence`)
parameters, including a required email address.

```
cwltool ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
```

### Running CWL for EBI tools (requires Docker)

You can find CWL definitions in [cwls-docker](cwls-docker) accompanied with predefined parameters defined in [ymls](ymls).
Running these CWL files **does not** require [webservice-clients](https://github.com/ebi-wp/webservice-clients) to be
found alongside the `webservice-cwl` directory, as the Docker image has got all the necessary clients pre-installed.

*Note:* Before running cwltool, you need to defined your own values for the `sequence` (or `asequence` plus `bsequence`)
parameters, including a required email address.

```
cwltool ./cwls-docker/tcoffee.cwl ./ymls/tcoffee.yml
```

## Chaining the tools into workflows

You can view examples of workflows chaining multiple tools together and example input ymls in the [workflows](workflows) folder.

## Documentation

More documentation about [EMBL-EBI Bioinformatics Web Services](https://www.ebi.ac.uk/seqdb/confluence/display/WEBSERVICES/EMBL-EBI+Web+Services)

## Contact and Support

If you have any problems, suggestions or comments for our services please
contact us via [EBI Support](http://www.ebi.ac.uk/support/index.php?query=WebServices).

## License
The European Bioinformatics Institute - [EMBL-EBI](https://www.ebi.ac.uk/), is an Intergovernmental Organization which, as part of the European Molecular Biology Laboratory family, focuses on research and services in bioinformatics.  

Apache License 2.0. See [license](LICENSE) for details.
