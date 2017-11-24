# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: ncbiblast_lwp.pl
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

  program:
    type: string?
    inputBinding:
      position: 3
      prefix: --program

  stype:
    type: string?
    inputBinding:
      position: 4
      prefix: --stype

  database:
    type: string?
    inputBinding:
      position: 5
      prefix: --database

  title:
    type: string?
    inputBinding:
      position: 6
      prefix: --title

  matrix:
    type: string?
    inputBinding:
      position: 7
      prefix: --matrix

  alignments:
    type: int?
    inputBinding:
      position: 8
      prefix: --alignments

  scores:
    type: int?
    inputBinding:
      position: 9
      prefix: --scores

  exp:
    type: int?
    inputBinding:
      position: 10
      prefix: --exp

  dropoff:
    type: int?
    inputBinding:
      position: 11
      prefix: --dropoff

  gapopen:
    type: int?
    inputBinding:
      position: 12
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      position: 13
      prefix: --gapext

  filter:
    type: boolean?
    inputBinding:
      position: 14
      prefix: --filter

  seqrange:
    type: string?
    inputBinding:
      position: 15
      prefix: --seqrange

  gapalign:
    type: boolean?
    inputBinding:
      position: 16
      prefix: --gapalign

  compstats:
    type: string?
    inputBinding:
      position: 17
      prefix: --compstats

  align:
    type: int?
    inputBinding:
      position: 18
      prefix: --align

  outformat:
    type: string?
    inputBinding:
      position: 19
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 20
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 21
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 22


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

  ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ids.txt"

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

  complete-visual-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.complete-visual-svg.svg"

  visual-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-png.png"

  complete-visual-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.complete-visual-png.png"

  visual-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-jpg.jpg"

  complete-visual-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.complete-visual-jpg.jpg"

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
