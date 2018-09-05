# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: dbfetch_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:

  method:
    type:
        type: enum
        symbols:
          - fetchData
          - fetchBatch
    doc: Type of command-line interface.
    inputBinding:
      position: 0

  dbName:
    type: string?
    doc: Database to be searched.
    inputBinding:
      position: 1

  idList:
    type: string[]
    doc: fetching idList
    inputBinding:
      itemSeparator: ","
      position: 2

  outFormat:
    type: string?
    doc: Format of the output
    inputBinding:
      position: 3

outputs:
  out:
    type: stdout
