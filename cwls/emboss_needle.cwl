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
      location: ../tools/emboss_needle_lwp.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  asequence:
    type: File
    inputBinding:
      position: 3
      prefix: --asequence
    default:
      class: File
      location: ../sequence/single.seq

  bsequence:
    type: File
    inputBinding:
      position: 3
      prefix: --bsequence
    default:
      class: File
      location: ../sequence/single.seq


  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 5
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: float   
    inputBinding:
      position: 6
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float   
    inputBinding:
      position: 7
      prefix: --gapext
#    default: '$defaultValue'

  endweight:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --endweight
#    default: '$defaultValue'

  endopen:
    type: float   
    inputBinding:
      position: 9
      prefix: --endopen
#    default: '$defaultValue'

  endextend:
    type: float   
    inputBinding:
      position: 10
      prefix: --endextend
#    default: '$defaultValue'

  format_param:
    type: string  
    inputBinding:
      position: 12
      prefix: --format
#    default: '$defaultValue'

  stype:
    type: string  
    inputBinding:
      position: 13
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
