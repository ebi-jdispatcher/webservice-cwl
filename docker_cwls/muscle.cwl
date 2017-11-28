# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: muscle_lwp.pl
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

  title:
    type: string?
    inputBinding:
      position: 3
      prefix: --title

  format_alignment:
    type:
        type: enum
        symbols:
          - fasta
          - clw
          - clwstrict
          - html
          - msf
          - phyi
          - phys
        inputBinding:
          position: 4
          prefix: --format
    default: clw

  tree:
    type: string?
    inputBinding:
      position: 5
      prefix: --tree

  order:
    type: string?
    inputBinding:
      position: 6
      prefix: --order

  outformat:
    type: string?
    inputBinding:
      position: 7
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 8
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 9
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 10


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
