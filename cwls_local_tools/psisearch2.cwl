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
      location: ../tools/psisearch2.pl

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

  psiprogram:
    type: string       
    inputBinding:
      position: 13
      prefix: --psiprogram
#    default: '$defaultValue'

  psithr:
    type: double       
    inputBinding:
      position: 14
      prefix: --psithr
#    default: '$defaultValue'

  maxiterations:
    type: int          
    inputBinding:
      position: 15
      prefix: --maxiterations
#    default: '$defaultValue'

  mask:
    type: string       
    inputBinding:
      position: 16
      prefix: --mask
#    default: '$defaultValue'

  domainannot:
    type: string       
    inputBinding:
      position: 17
      prefix: --domainannot
#    default: '$defaultValue'

  domaindb:
    type: string       
    inputBinding:
      position: 18
      prefix: --domaindb
#    default: '$defaultValue'

  domaindiag:
    type: boolean      
    inputBinding:
      position: 19
      prefix: --domaindiag
#    default: '$defaultValue'

  seqbdr:
    type: string       
    inputBinding:
      position: 20
      prefix: --seqbdr
#    default: '$defaultValue'

  qvalue:
    type: int          
    inputBinding:
      position: 21
      prefix: --qvalue
#    default: '$defaultValue'

  matrix:
    type: string       
    inputBinding:
      position: 22
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: int          
    inputBinding:
      position: 23
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int          
    inputBinding:
      position: 24
      prefix: --gapext
#    default: '$defaultValue'

  expthr:
    type: double       
    inputBinding:
      position: 25
      prefix: --expthr
#    default: '$defaultValue'

  scores:
    type: int          
    inputBinding:
      position: 26
      prefix: --scores
#    default: '$defaultValue'

  alignments:
    type: int          
    inputBinding:
      position: 27
      prefix: --alignments
#    default: '$defaultValue'

  hsps:
    type: boolean      
    inputBinding:
      position: 28
      prefix: --hsps
#    default: '$defaultValue'

  scoreformat:
    type: string       
    inputBinding:
      position: 29
      prefix: --scoreformat
#    default: '$defaultValue'

  filter:
    type: string       
    inputBinding:
      position: 30
      prefix: --filter
#    default: '$defaultValue'

  hist:
    type: boolean      
    inputBinding:
      position: 31
      prefix: --hist
#    default: '$defaultValue'

  previousjobid:
    type: string       
    inputBinding:
      position: 32
      prefix: --previousjobid
#    default: '$defaultValue'

  selectedHits:
    type: base64Binary 
    inputBinding:
      position: 33
      prefix: --selectedHits
#    default: '$defaultValue'

  bdrfile:
    type: base64Binary 
    inputBinding:
      position: 34
      prefix: --bdrfile
#    default: '$defaultValue'

  cpfile:
    type: base64Binary 
    inputBinding:
      position: 35
      prefix: --cpfile
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
