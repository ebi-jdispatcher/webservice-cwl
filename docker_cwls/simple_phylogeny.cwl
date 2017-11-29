# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: simple_phylogeny_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container

inputs:

  email:
    type: string?
    doc: Submitter's email.
    inputBinding:
      prefix: --email

  sequence:
    type: string?
    inputBinding:
      prefix: --sequence

  title:
    type: string?
    inputBinding:
      prefix: --title

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

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 1


outputs:
  all_out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  sequence_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  tree_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.tree.ph"
