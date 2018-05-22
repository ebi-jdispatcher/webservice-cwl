# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: psiblast_lwp.pl

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

  database:
    type: string?
    inputBinding:
      position: 4
      prefix: --database

  title:
    type: string?
    inputBinding:
      position: 5
      prefix: --title

  matrix:
    type: string?
    inputBinding:
      position: 6
      prefix: --matrix

  gapopen:
    type: int?
    inputBinding:
      position: 7
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      position: 8
      prefix: --gapext

  expthr:
    type: double?
    inputBinding:
      position: 9
      prefix: --expthr

  psithr:
    type: double?
    inputBinding:
      position: 10
      prefix: --psithr

  scores:
    type: int?
    inputBinding:
      position: 11
      prefix: --scores

  alignments:
    type: int?
    inputBinding:
      position: 12
      prefix: --alignments

  alignView:
    type: int?
    inputBinding:
      position: 13
      prefix: --alignView

  dropoff:
    type: int?
    inputBinding:
      position: 14
      prefix: --dropoff

  finaldropoff:
    type: int?
    inputBinding:
      position: 15
      prefix: --finaldropoff

  filter:
    type: boolean?
    inputBinding:
      position: 16
      prefix: --filter

  seqrange:
    type: string?
    inputBinding:
      position: 17
      prefix: --seqrange

  outformat:
    type: string?
    inputBinding:
      position: 18
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 19
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 20
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 21


outputs:
  all_out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  wrapper_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.wrapper_out.txt"

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

  ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ids.txt"

  preselected_ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.preselected_ids.txt"

  preselected_seq:
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
