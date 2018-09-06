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
      location: ../tools/lalign.pl

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

  stype:
    type: string  
    inputBinding:
      position: 5
      prefix: --stype
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 6
      prefix: --matrix
#    default: '$defaultValue'

  match_scores:
    type: string  
    inputBinding:
      position: 7
      prefix: --match_scores
#    default: '$defaultValue'

  gapopen:
    type: int     
    inputBinding:
      position: 8
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int     
    inputBinding:
      position: 9
      prefix: --gapext
#    default: '$defaultValue'

  expthr:
    type: double  
    inputBinding:
      position: 10
      prefix: --expthr
#    default: '$defaultValue'

  format:
    type: string  
    inputBinding:
      position: 11
      prefix: --format
#    default: '$defaultValue'

  graphics:
    type: boolean 
    inputBinding:
      position: 12
      prefix: --graphics
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
