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
      location: ../tools/ncbiblast_plus.pl

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
      location: single.seq




  
  program:
    type: string        
    inputBinding:
      position: 8
      prefix: --program
#    default: '$defaultValue'

  stype:
    type: string        
    inputBinding:
      position: 16
      prefix: --stype
#    default: '$defaultValue'

  database:
    type: string
    inputBinding:
      position: 24
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 28
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 29
      prefix: --matrix
#    default: '$defaultValue'

  alignments:
    type: int     
    inputBinding:
      position: 30
      prefix: --alignments
#    default: '$defaultValue'

  scores:
    type: int     
    inputBinding:
      position: 31
      prefix: --scores
#    default: '$defaultValue'

  exp:
    type: string  
    inputBinding:
      position: 32
      prefix: --exp
#    default: '$defaultValue'

  dropoff:
    type: int     
    inputBinding:
      position: 33
      prefix: --dropoff
#    default: '$defaultValue'

  match_scores:
    type: string  
    inputBinding:
      position: 34
      prefix: --match_scores
#    default: '$defaultValue'

  gapopen:
    type: int     
    inputBinding:
      position: 35
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int     
    inputBinding:
      position: 36
      prefix: --gapext
#    default: '$defaultValue'

  filter:
    type: string  
    inputBinding:
      position: 37
      prefix: --filter
#    default: '$defaultValue'

  seqrange:
    type: string  
    inputBinding:
      position: 38
      prefix: --seqrange
#    default: '$defaultValue'

  gapalign:
    type: boolean 
    inputBinding:
      position: 39
      prefix: --gapalign
#    default: '$defaultValue'

  compstats:
    type: string  
    inputBinding:
      position: 40
      prefix: --compstats
#    default: '$defaultValue'

  align:
    type: int     
    inputBinding:
      position: 41
      prefix: --align
#    default: '$defaultValue'

  transltable:
    type: int     
    inputBinding:
      position: 42
      prefix: --transltable
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
