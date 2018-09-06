# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: mafft_lwp.pl
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
    default: sp:wap_rat,sp:wap_mouse

  format-param:
    type: string?
    inputBinding:
      prefix: --format

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  gapopen:
    type: float?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: float?
    inputBinding:
      prefix: --gapext

  order:
    type: string?
    inputBinding:
      prefix: --order

  nbtree:
    type: int
    inputBinding:
      prefix: --nbtree

  maxiterate:
    type: int?
    inputBinding:
      prefix: --maxiterate

  ffts:
    type: string?
    inputBinding:
      prefix: --ffts

outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
