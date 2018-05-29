# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: tcoffee_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container

inputs:

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: string
    inputBinding:
      prefix: --sequence
    default: sp:wap_rat,sp:wap_mouse

  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string
    inputBinding:
      prefix: --matrix
#    default: '$defaultValue'

  order:
    type: string
    inputBinding:
      prefix: --order
#    default: '$defaultValue'


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
