# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: mafft_lwp.pl
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

  format-param:
    type: string
    inputBinding:
      prefix: --format
#    default: '$defaultValue'

  matrix:
    type: string
    inputBinding:
      prefix: --matrix
#    default: '$defaultValue'

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

  order:
    type: string
    inputBinding:
      prefix: --order
#    default: '$defaultValue'

  nbtree:
    type: int
    inputBinding:
      prefix: --nbtree
#    default: '$defaultValue'

  maxiterate:
    type: int
    inputBinding:
      prefix: --maxiterate
#    default: '$defaultValue'

  ffts:
    type: string
    inputBinding:
      prefix: --ffts
#    default: '$defaultValue'

outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
