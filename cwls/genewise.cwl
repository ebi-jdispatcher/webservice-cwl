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
      location: ../tools/genewise.pl

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

  para:
    type: boolean 
    inputBinding:
      position: 5
      prefix: --para
#    default: '$defaultValue'

  pretty:
    type: boolean 
    inputBinding:
      position: 6
      prefix: --pretty
#    default: '$defaultValue'

  genes:
    type: boolean 
    inputBinding:
      position: 7
      prefix: --genes
#    default: '$defaultValue'

  trans:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --trans
#    default: '$defaultValue'

  cdna:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --cdna
#    default: '$defaultValue'

  embl:
    type: boolean 
    inputBinding:
      position: 10
      prefix: --embl
#    default: '$defaultValue'

  ace:
    type: boolean 
    inputBinding:
      position: 11
      prefix: --ace
#    default: '$defaultValue'

  gff:
    type: boolean 
    inputBinding:
      position: 12
      prefix: --gff
#    default: '$defaultValue'

  diana:
    type: boolean 
    inputBinding:
      position: 13
      prefix: --diana
#    default: '$defaultValue'

  init:
    type: string  
    inputBinding:
      position: 14
      prefix: --init
#    default: '$defaultValue'

  splice:
    type: string  
    inputBinding:
      position: 15
      prefix: --splice
#    default: '$defaultValue'

  random:
    type: string  
    inputBinding:
      position: 16
      prefix: --random
#    default: '$defaultValue'

  alg:
    type: string  
    inputBinding:
      position: 17
      prefix: --alg
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
