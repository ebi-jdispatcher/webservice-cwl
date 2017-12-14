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
      prefix: --email

  sequence:
    type: string?
    inputBinding:
      prefix: --sequence

  title:
    type: string?
    inputBinding:
      prefix: --title

  format-results:
    type:
        - "null"
        - type: enum
          symbols:
            - short
            - long
            - grp
            - raw
          inputBinding:
            prefix: --format

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

  visual-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-png.png"

  plp:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.plp.txt"

  gnuplot:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.gnuplot.txt"

  error:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.error.txt"
