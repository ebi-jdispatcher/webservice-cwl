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
      location: ../tools/mafft_lwp.pl

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

  treeout:
    type: boolean 
    inputBinding:
      position: 11
      prefix: --treeout
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

  stype:
    type: string  
    inputBinding:
      position: 14
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
