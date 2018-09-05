# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: psiblast_lwp.pl
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

  database:
    type: string?
    inputBinding:
      prefix: --database

  title:
    type: string?
    inputBinding:
      prefix: --title

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  gapopen:
    type: int?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      prefix: --gapext

  expthr:
    type: double?
    inputBinding:
      prefix: --expthr

  psithr:
    type: double?
    inputBinding:
      prefix: --psithr

  scores:
    type: int?
    inputBinding:
      prefix: --scores

  alignments:
    type: int?
    inputBinding:
      prefix: --alignments

  alignView:
    type: int?
    inputBinding:
      prefix: --alignView

  dropoff:
    type: int?
    inputBinding:
      prefix: --dropoff

  finaldropoff:
    type: int?
    inputBinding:
      prefix: --finaldropoff

  filter:
    type: boolean?
    inputBinding:
      prefix: --filter

  seqrange:
    type: string?
    inputBinding:
      prefix: --seqrange

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

  wrapper-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.wrapper_out.txt"

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

  ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ids.txt"

  preselected-ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.preselected_ids.txt"

  preselected-seq:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.preselected_seq.txt"

  xml:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.xml.xml"

  visual-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-svg.svg"

  visual-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-png.png"

  visual-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-jpg.jpg"

  ffdp-query-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-svg.svg"

  ffdp-query-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-png.png"

  ffdp-query-jpeg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-jpeg.jpg"

  ffdp-subject-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-svg.svg"

  ffdp-subject-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-jpeg.jpg"

  ffdp-subject-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-png.png"
