# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: phobius_lwp.pl
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
