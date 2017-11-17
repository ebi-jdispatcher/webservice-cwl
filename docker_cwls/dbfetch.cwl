# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: dbfetch_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container

inputs:

  method:
    type: string
    doc: Type of command-line interface.
    inputBinding:
      position: 4
#    default: 'fetchData'

  dbName:
    type: string
    doc: Database to be searched.
    inputBinding:
      position: 5
#    default: 'uniprot'

  idList:
    type: string
    doc: fetching idList
    inputBinding:
      position: 6
#    default: 'WAP_RAT'

  outFormat:
    type: string
    doc: Format of the output
    inputBinding:
      position: 7
#    default: 'fasta'

outputs:
  cwl_out:
    type: stdout
