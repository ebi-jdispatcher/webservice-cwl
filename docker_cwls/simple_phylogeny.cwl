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
      position: 1
      prefix: --email

  sequence:
    type: string?
    inputBinding:
      position: 2
      prefix: --sequence
    default: ">UniProt/Swiss-Prot|P26898|IL2RA_SHEEP\nSP:IL2RA_SHEEP\n>UniProt/Swiss-Prot|Q95118|IL2RG_BOVIN\nSP:IL2RA_BOVIN"

  title:
    type: string?
    inputBinding:
      position: 3
      prefix: --title

  tree:
    type: string?
    inputBinding:
      position: 4
      prefix: --tree

  kimura:
    type: boolean?
    inputBinding:
      position: 5
      prefix: --kimura

  tossgaps:
    type: boolean?
    inputBinding:
      position: 6
      prefix: --tossgaps

  clustering:
    type:
        - "null"
        - type: enum
          symbols:
            - Neighbour-joining
            - UPGMA
          inputBinding:
            position: 7
            prefix: --clustering

  pim:
    type: boolean?
    inputBinding:
      position: 8
      prefix: --pim

  outformat:
    type: string?
    inputBinding:
      position: 9
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 10
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 11
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 12


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
