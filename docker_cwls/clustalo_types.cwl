# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: clustalo_lwp.pl

requirements:
    SchemaDefRequirement:
        types:
            - $import: MyTypes.yaml
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

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  title:
    type: string?
    inputBinding:
      prefix: --title

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

  outfmt:
    type: MyTypes.yaml#opt
    inputBinding:
      prefix: --outfmt

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
