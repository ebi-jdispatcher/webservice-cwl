# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: muscle_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

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

  format-alignment:
    type:
        - "null"
        - type: enum
          symbols:
            - fasta
            - clw
            - clwstrict
            - html
            - msf
            - phyi
            - phys
          inputBinding:
            prefix: --format
    default: clw

  tree:
    type: string?
    inputBinding:
      prefix: --tree

  order:
    type: string?
    inputBinding:
      prefix: --order

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

  aln:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.aln-*.*"

  phylotree:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.phylotree.ph"

  pim:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.pim.pim"
