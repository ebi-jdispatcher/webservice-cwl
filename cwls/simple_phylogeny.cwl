# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: simple_phylogeny_lwp.pl
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

  tree:
    type: string?
    inputBinding:
      prefix: --tree

  kimura:
    type: boolean?
    inputBinding:
      prefix: --kimura

  tossgaps:
    type: boolean?
    inputBinding:
      prefix: --tossgaps

  clustering:
    type:
        - "null"
        - type: enum
          symbols:
            - Neighbour-joining
            - UPGMA
          inputBinding:
            prefix: --clustering

  pim:
    type: boolean?
    inputBinding:
      prefix: --pim

  input-file:
    type: File?
    inputBinding:
      position: 1


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  sequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  tree-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.tree.ph"
