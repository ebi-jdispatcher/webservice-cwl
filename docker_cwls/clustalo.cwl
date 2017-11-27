# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: clustalo_lwp.pl
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

  stype:
    type: string?
    inputBinding:
      position: 3
      prefix: --stype

  title:
    type: string?
    inputBinding:
      position: 4
      prefix: --title

  guidetreeout:
    type: boolean?
    inputBinding:
      position: 5
      prefix: --guidetreeout

  dismatout:
    type: boolean?
    inputBinding:
      position: 6
      prefix: --dismatout

  dealign:
    type: boolean?
    inputBinding:
      position: 7
      prefix: --dealign

  mbed:
    type: boolean?
    inputBinding:
      position: 8
      prefix: --mbed

  mbediteration:
    type: boolean?
    inputBinding:
      position: 9
      prefix: --mbediteration

  iterations:
    type: int?
    inputBinding:
      position: 10
      prefix: --iterations

  gtiterations:
    type: int?
    inputBinding:
      position: 11
      prefix: --gtiterations

  hmmiterations:
    type: int?
    inputBinding:
      position: 12
      prefix: --hmmiterations

  outfmt:
    type:
        type: enum
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
          position: 13
          prefix: --outfmt
    default: clustal

  outformat:
    type: string?
    inputBinding:
      position: 14
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 15
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 16
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 17


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
