# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: emboss_needle_lwp.pl
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

  asequence:
    type: string?
    inputBinding:
      position: 2
      prefix: --asequence

  bsequence:
    type: string?
    inputBinding:
      position: 3
      prefix: --bsequence

  title:
    type: string?
    inputBinding:
      position: 4
      prefix: --title

  matrix:
    type: string?
    inputBinding:
      position: 5
      prefix: --matrix

  gapopen:
    type: float?
    inputBinding:
      position: 6
      prefix: --gapopen

  gapext:
    type: float?
    inputBinding:
      position: 7
      prefix: --gapext

  endweight:
    type: boolean?
    inputBinding:
      position: 8
      prefix: --endweight

  endopen:
    type: float?
    inputBinding:
      position: 9
      prefix: --endopen

  endextend:
    type: float?
    inputBinding:
      position: 10
      prefix: --endextend

  format_alignment:
    type:
        - "null"
        - type: enum
          symbols:
            - pair
            - markx0
            - markx1
            - markx2
            - markx3
            - markx10
            - srspair
            - score
          inputBinding:
            position: 11
            prefix: --format

  stype:
    type: string?
    inputBinding:
      position: 12
      prefix: --stype

  outformat:
    type: string?
    inputBinding:
      position: 13
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 14
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 15
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 16


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

  asequence_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.asequence.txt"

  bsequence_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.bsequence.txt"

  aln:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.aln.*"
