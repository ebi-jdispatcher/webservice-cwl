# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: phobius_lwp.pl
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

  phobius_format:
    type:
        - "null"
        - type: enum
          symbols:
            - short
            - long
            - grp
            - raw
          inputBinding:
            position: 4
            prefix: --format

  multifasta:
    type: boolean?
    inputBinding:
      position: 5
      prefix: --multifasta

  outformat:
    type: string?
    inputBinding:
      position: 6
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 7
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 8
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 9


outputs:
  all_out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  out:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  sequence_out:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  visual-png:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.visual-png.png"

  plp:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.plp.txt"

  gnuplot:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.gnuplot.txt"

  error:
    type: File[]?
    streamable: true
    outputBinding:
      glob: "*.error.txt"
