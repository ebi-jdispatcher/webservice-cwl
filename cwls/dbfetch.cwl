# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: perl 
inputs:

  command: 
    type: File
    inputBinding:
      position: 0       
    default:
      class: File
      location: ../tools/dbfetch_lwp.pl

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
