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
      location: ../tools/clustalw2.pl

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

  alignment:
    type: string  
    inputBinding:
      position: 5
      prefix: --alignment
#    default: '$defaultValue'

  type:
    type: string  
    inputBinding:
      position: 6
      prefix: --type
#    default: '$defaultValue'

  ktup:
    type: int     
    inputBinding:
      position: 7
      prefix: --ktup
#    default: '$defaultValue'

  window:
    type: int     
    inputBinding:
      position: 8
      prefix: --window
#    default: '$defaultValue'

  score:
    type: string  
    inputBinding:
      position: 9
      prefix: --score
#    default: '$defaultValue'

  topdiags:
    type: int     
    inputBinding:
      position: 10
      prefix: --topdiags
#    default: '$defaultValue'

  pairgap:
    type: int     
    inputBinding:
      position: 11
      prefix: --pairgap
#    default: '$defaultValue'

  pwmatrix:
    type: string  
    inputBinding:
      position: 12
      prefix: --pwmatrix
#    default: '$defaultValue'

  pwdnamatrix:
    type: string  
    inputBinding:
      position: 13
      prefix: --pwdnamatrix
#    default: '$defaultValue'

  pwgapopen:
    type: int     
    inputBinding:
      position: 14
      prefix: --pwgapopen
#    default: '$defaultValue'

  pwgapext:
    type: float   
    inputBinding:
      position: 15
      prefix: --pwgapext
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 16
      prefix: --matrix
#    default: '$defaultValue'

  dnamatrix:
    type: string  
    inputBinding:
      position: 17
      prefix: --dnamatrix
#    default: '$defaultValue'

  gapopen:
    type: int     
    inputBinding:
      position: 18
      prefix: --gapopen
#    default: '$defaultValue'

  noendgaps:
    type: boolean 
    inputBinding:
      position: 19
      prefix: --noendgaps
#    default: '$defaultValue'

  gapext:
    type: float   
    inputBinding:
      position: 20
      prefix: --gapext
#    default: '$defaultValue'

  gapdist:
    type: int     
    inputBinding:
      position: 21
      prefix: --gapdist
#    default: '$defaultValue'

  iteration:
    type: string  
    inputBinding:
      position: 22
      prefix: --iteration
#    default: '$defaultValue'

  numiter:
    type: int     
    inputBinding:
      position: 23
      prefix: --numiter
#    default: '$defaultValue'

  clustering:
    type: string  
    inputBinding:
      position: 24
      prefix: --clustering
#    default: '$defaultValue'

  output:
    type: string  
    inputBinding:
      position: 25
      prefix: --output
#    default: '$defaultValue'

  outorder:
    type: string  
    inputBinding:
      position: 26
      prefix: --outorder
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
