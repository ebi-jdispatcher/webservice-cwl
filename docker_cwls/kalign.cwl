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
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  sequence:
    type: File
    inputBinding:
      position: 3
      prefix: --sequence
    default:
      class: File
      location: ../sequence/multi.seq
  




  
  stype:
    type: string 
    inputBinding:
      position: 8
      prefix: --stype
#    default: '$defaultValue'

  title:
    type: string 
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  format_param:
    type: string 
    inputBinding:
      position: 13
      prefix: --format
#    default: 'fasta'

  gapopen:
    type: float  
    inputBinding:
      position: 14
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float  
    inputBinding:
      position: 15
      prefix: --gapext
#    default: '$defaultValue'

  termgap:
    type: float  
    inputBinding:
      position: 16
      prefix: --termgap
#    default: '$defaultValue'

  bonus:
    type: float  
    inputBinding:
      position: 17
      prefix: --bonus
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
