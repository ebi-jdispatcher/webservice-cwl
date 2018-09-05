# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: fasta_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container
inputs:

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: string
    inputBinding:
      prefix: --sequence
    default: uniprot:wap_rat





  program:
    type: string
    inputBinding:
      prefix: --program
#    default: '$defaultValue'

  stype:
    type: string
    inputBinding:
      prefix: --stype
#    default: '$defaultValue'

  database:
    type: string
    inputBinding:
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string
    inputBinding:
      prefix: --matrix
#    default: '$defaultValue'

  match-scores:
    type: string
    inputBinding:
      prefix: --match_scores
#    default: '$defaultValue'

  gapopen:
    type: int
    inputBinding:
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: int
    inputBinding:
      prefix: --gapext
#    default: '$defaultValue'

  hsps:
    type: boolean
    inputBinding:
      prefix: --hsps
#    default: '$defaultValue'

  expupperlim:
    type: double
    inputBinding:
      prefix: --expupperlim
#    default: '$defaultValue'

  explowlim:
    type: double
    inputBinding:
      prefix: --explowlim
#    default: '$defaultValue'

  strand:
    type: string
    inputBinding:
      prefix: --strand
#    default: '$defaultValue'

  hist:
    type: boolean
    inputBinding:
      prefix: --hist
#    default: '$defaultValue'

  scores:
    type: int
    inputBinding:
      prefix: --scores
#    default: '$defaultValue'

  alignments:
    type: int
    inputBinding:
      prefix: --alignments
#    default: '$defaultValue'

  scoreformat:
    type: string
    inputBinding:
      prefix: --scoreformat
#    default: '$defaultValue'

  stats:
    type: string
    inputBinding:
      prefix: --stats
#    default: '$defaultValue'

  annotfeats:
    type: boolean
    inputBinding:
      prefix: --annotfeats
#    default: '$defaultValue'

  dbrange:
    type: string
    inputBinding:
      prefix: --dbrange
#    default: '$defaultValue'

  seqrange:
    type: string
    inputBinding:
      prefix: --seqrange
#    default: '$defaultValue'

  filter:
    type: string
    inputBinding:
      prefix: --filter
#    default: '$defaultValue'

  ktup:
    type: int
    inputBinding:
      prefix: --ktup
#    default: '$defaultValue'


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
