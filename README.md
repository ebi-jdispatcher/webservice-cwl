# Common Workflow Language EBI tool implementation
This is CWL implementation for consuming EMBL-EBI Web Services tools' clients.

### How to install cwltool
* [cwltool](https://github.com/common-workflow-language/cwltool) is required to run cwl.

### How to run

#### A CWL, consuming Rest Client of EBI Tools
You will need cwl-runner(cwltool) as officially instructed here [cwltool](https://github.com/common-workflow-language/cwltool).

You could find predefined parameters in cwl (./cwls/) and mostly paired yml(./ymls/) file. 
Remember, before running cwl, you could redefined with your own values of parameters like email account. 

```
cwltool ./cwls/tcoffee.cwl ./ymls/tcoffee.yml
```

#### A CWL, consuming Docker of EBI Tools
You will need cwl-runner(cwltool) as officially instructed here [cwltool](https://github.com/common-workflow-language/cwltool).

You could find predefined parameters in cwl (./cwls/) and mostly paired yml(./ymls/) file. 
Remember, before running cwl, you could redefined with your own values of parameters like email account. 

```
cwltool  ./docker_cwls/tcoffee.cwl ./ymls/tcoffee.yml
```

### Directories
- cwls : cwl files for the clients of EBI Tools
- docker_cwls : cwl files for the docker container of EBI Tools
- sequence : example sequence files for testing purpose only. It is predefined in the each cwl. You could use with your sequence. 
- tools : EMBL-EBI Web Services tools' clients. [webservice-clients](https://github.com/ebi-wp/webservice-clients)
- ymls : yml files, defined parameters' values.
