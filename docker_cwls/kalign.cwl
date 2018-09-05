# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: kalign_lwp.pl
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






  stype:
    type: string
    inputBinding:
      prefix: --stype
#    default: '$defaultValue'

  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'

  format-param:
    type: string
    inputBinding:
      prefix: --format
#    default: 'fasta'

  gapopen:
    type: float
    inputBinding:
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float
    inputBinding:
      prefix: --gapext
#    default: '$defaultValue'

  termgap:
    type: float
    inputBinding:
      prefix: --termgap
#    default: '$defaultValue'

  bonus:
    type: float
    inputBinding:
      prefix: --bonus
#    default: '$defaultValue'


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
