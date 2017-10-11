# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: fasta_lwp.pl
hints:
  DockerRequirement:
    dockerPull: joonhlee/ebitools-container

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
      location: ../sequence/single.seq




  
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

  match_scores:
    type: string  
    inputBinding:
      position: 30
      prefix: --match_scores
#    default: '$defaultValue'

  gapopen:
    type: int     
    inputBinding:
      position: 31
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int     
    inputBinding:
      position: 32
      prefix: --gapext
#    default: '$defaultValue'

  hsps:
    type: boolean 
    inputBinding:
      position: 33
      prefix: --hsps
#    default: '$defaultValue'

  expupperlim:
    type: double  
    inputBinding:
      position: 34
      prefix: --expupperlim
#    default: '$defaultValue'

  explowlim:
    type: double  
    inputBinding:
      position: 35
      prefix: --explowlim
#    default: '$defaultValue'

  strand:
    type: string  
    inputBinding:
      position: 36
      prefix: --strand
#    default: '$defaultValue'

  hist:
    type: boolean 
    inputBinding:
      position: 37
      prefix: --hist
#    default: '$defaultValue'

  scores:
    type: int     
    inputBinding:
      position: 38
      prefix: --scores
#    default: '$defaultValue'

  alignments:
    type: int     
    inputBinding:
      position: 39
      prefix: --alignments
#    default: '$defaultValue'

  scoreformat:
    type: string  
    inputBinding:
      position: 40
      prefix: --scoreformat
#    default: '$defaultValue'

  stats:
    type: string  
    inputBinding:
      position: 41
      prefix: --stats
#    default: '$defaultValue'

  annotfeats:
    type: boolean 
    inputBinding:
      position: 42
      prefix: --annotfeats
#    default: '$defaultValue'

  dbrange:
    type: string  
    inputBinding:
      position: 44
      prefix: --dbrange
#    default: '$defaultValue'

  seqrange:
    type: string  
    inputBinding:
      position: 45
      prefix: --seqrange
#    default: '$defaultValue'

  filter:
    type: string  
    inputBinding:
      position: 46
      prefix: --filter
#    default: '$defaultValue'

  ktup:
    type: int     
    inputBinding:
      position: 48
      prefix: --ktup
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"