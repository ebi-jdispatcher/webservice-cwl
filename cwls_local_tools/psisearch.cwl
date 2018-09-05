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
      location: ../tools/psisearch.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  database:
    type: string 
    inputBinding:
      position: 8
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string       
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string       
    inputBinding:
      position: 13
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: int          
    inputBinding:
      position: 14
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int          
    inputBinding:
      position: 15
      prefix: --gapext
#    default: '$defaultValue'

  expthr:
    type: double       
    inputBinding:
      position: 16
      prefix: --expthr
#    default: '$defaultValue'

  mask:
    type: boolean      
    inputBinding:
      position: 17
      prefix: --mask
#    default: '$defaultValue'

  psithr:
    type: double       
    inputBinding:
      position: 18
      prefix: --psithr
#    default: '$defaultValue'

  scores:
    type: int          
    inputBinding:
      position: 19
      prefix: --scores
#    default: '$defaultValue'

  alignments:
    type: int          
    inputBinding:
      position: 20
      prefix: --alignments
#    default: '$defaultValue'

  hsps:
    type: boolean      
    inputBinding:
      position: 21
      prefix: --hsps
#    default: '$defaultValue'

  scoreformat:
    type: string       
    inputBinding:
      position: 22
      prefix: --scoreformat
#    default: '$defaultValue'

  filter:
    type: string       
    inputBinding:
      position: 23
      prefix: --filter
#    default: '$defaultValue'

  hist:
    type: boolean      
    inputBinding:
      position: 24
      prefix: --hist
#    default: '$defaultValue'

  annotfeats:
    type: boolean      
    inputBinding:
      position: 25
      prefix: --annotfeats
#    default: '$defaultValue'

  previousjobid:
    type: string       
    inputBinding:
      position: 26
      prefix: --previousjobid
#    default: '$defaultValue'

  selectedHits:
    type: base64Binary 
    inputBinding:
      position: 27
      prefix: --selectedHits
#    default: '$defaultValue'

  bdrfile:
    type: base64Binary 
    inputBinding:
      position: 28
      prefix: --bdrfile
#    default: '$defaultValue'

  cpfile:
    type: base64Binary 
    inputBinding:
      position: 29
      prefix: --cpfile
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
