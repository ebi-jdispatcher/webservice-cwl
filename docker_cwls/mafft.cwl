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
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  sequence:
    type: string
    inputBinding:
      position: 3
      prefix: --sequence
    default: sp:wap_rat,sp:wap_mouse
  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  format_param:
    type: string  
    inputBinding:
      position: 5
      prefix: --format
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 6
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: float   
    inputBinding:
      position: 7
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float   
    inputBinding:
      position: 8
      prefix: --gapext
#    default: '$defaultValue'

  order:
    type: string  
    inputBinding:
      position: 9
      prefix: --order
#    default: '$defaultValue'

  nbtree:
    type: int     
    inputBinding:
      position: 10
      prefix: --nbtree
#    default: '$defaultValue'

  maxiterate:
    type: int     
    inputBinding:
      position: 12
      prefix: --maxiterate
#    default: '$defaultValue'

  ffts:
    type: string  
    inputBinding:
      position: 13
      prefix: --ffts
#    default: '$defaultValue'

outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
