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
      location: ../tools/emboss_matcher.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
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
    type: int    
    inputBinding:
      position: 6
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int    
    inputBinding:
      position: 7
      prefix: --gapext
#    default: '$defaultValue'

  alternatives:
    type: int    
    inputBinding:
      position: 8
      prefix: --alternatives
#    default: '$defaultValue'

  format:
    type: string 
    inputBinding:
      position: 9
      prefix: --format
#    default: '$defaultValue'

  stype:
    type: string 
    inputBinding:
      position: 10
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
