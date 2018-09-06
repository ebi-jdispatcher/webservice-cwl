# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: clustalo_lwp.pl
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

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  guidetreeout:
    type: boolean?
    inputBinding:
      prefix: --guidetreeout

  dismatout:
    type: boolean?
    inputBinding:
      prefix: --dismatout

  dealign:
    type: boolean?
    inputBinding:
      prefix: --dealign

  mbed:
    type: boolean?
    inputBinding:
      prefix: --mbed

  mbediteration:
    type: boolean?
    inputBinding:
      prefix: --mbediteration

  iterations:
    type: int?
    inputBinding:
      prefix: --iterations

  gtiterations:
    type: int?
    inputBinding:
      prefix: --gtiterations

  hmmiterations:
    type: int?
    inputBinding:
      prefix: --hmmiterations

  format-alignment:
    type:
        - "null"
        - type: enum
          symbols:
            - clustal
            - clustal_num
            - fa
            - msf
            - nexus
            - phylip
            - selex
            - stockholm
            - vienna
          inputBinding:
            prefix: --outfmt
  order:
    type: string
    inputBinding:
      prefix: --order

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
