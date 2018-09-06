# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: fasta_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:

  # Web Service Clients: Common Entries
  email:
    type: string
    doc: "Submitter's email"
    inputBinding:
      prefix: --email

  title:
    type: string?
    inputBinding:
      prefix: --title

  jobid:
    type: string?
    inputBinding:
      prefix: --jobid

  polljob:
    type: boolean?
    inputBinding:
      prefix: --polljob

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat

  pollfreq:
    type: int?
    inputBinding:
      prefix: --pollFreq

  params:
    type: boolean?
    inputBinding:
      prefix: --params
      position: 1

  paramdetails:
    type: string?
    inputBinding:
      prefix: --paramDetail

  # Web Service Clients: Different Entries
  sequence:
    type: string?
    inputBinding:
      prefix: --sequence
    default: uniprot:wap_rat

  program:
    type: string?
    inputBinding:
      prefix: --program

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  database:
    type: string?
    inputBinding:
      prefix: --database

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  match-scores:
    type: string?
    inputBinding:
      prefix: --match_scores

  gapopen:
    type: int?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      prefix: --gapext

  hsps:
    type: boolean?
    inputBinding:
      prefix: --hsps

  expupperlim:
    type: double?
    inputBinding:
      prefix: --expupperlim

  explowlim:
    type: double?
    inputBinding:
      prefix: --explowlim

  strand:
    type: string?
    inputBinding:
      prefix: --strand

  hist:
    type: boolean?
    inputBinding:
      prefix: --hist

  scores:
    type: int?
    inputBinding:
      prefix: --scores

  alignments:
    type: int?
    inputBinding:
      prefix: --alignments

  scoreformat:
    type: string?
    inputBinding:
      prefix: --scoreformat

  stats:
    type: string?
    inputBinding:
      prefix: --stats

  annotfeats:
    type: boolean?
    inputBinding:
      prefix: --annotfeats

  dbrange:
    type: string?
    inputBinding:
      prefix: --dbrange

  seqrange:
    type: string?
    inputBinding:
      prefix: --seqrange

  filter:
    type: string?
    inputBinding:
      prefix: --filter

  ktup:
    type: int?
    inputBinding:
      prefix: --ktup


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
