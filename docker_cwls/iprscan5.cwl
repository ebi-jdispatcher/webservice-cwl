# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: iprscan5_lwp.pl
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

  goterms:
    type: boolean?
    inputBinding:
      position: 4
      prefix: --goterms

  pathways:
    type: boolean?
    inputBinding:
      position: 5
      prefix: --pathways

  appl:
    type:
        - "null"
        - type: enum
          symbols:
            - PrositePatterns
            - SuperFamily
            - SignalP
            - TMHMM
            - Panther
            - Gene3d
            - Phobius
            - Coils
            - CDD
            - SFLD
          inputBinding:
            itemSeparator: ","
            position: 6
            prefix: --appl

  outformat:
    type: string?
    inputBinding:
      position: 7
      prefix: --outformat

  polljob:
    type: boolean?
    inputBinding:
      position: 8
      prefix: --polljob

  jobid:
    type: string?
    inputBinding:
      position: 9
      prefix: --jobid

  input_file:
    type: File?
    inputBinding:
      position: 10


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

  log:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.log.txt"

  tsv:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.tsv.txt"

  xml:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.xml.xml"

  htmltarball:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.htmltarball.html.tar.gz"

  gff:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.gff.txt"

  svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.svg.svg"

  sequence_out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  json:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.json.txt"
