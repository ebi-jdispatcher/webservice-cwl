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
      prefix: --email

  sequence:
    type: string?
    inputBinding:
      prefix: --sequence

  title:
    type: string?
    inputBinding:
      prefix: --title

  goterms:
    type: boolean?
    inputBinding:
      prefix: --goterms

  pathways:
    type: boolean?
    inputBinding:
      prefix: --pathways

  appl:
    # This supposes to allow multiple appl options:
    # --a Coils --a CDD -> should results in --appl Coils,CDD
    # However, it doesn't: [issue reported](https://github.com/common-workflow-language/cwltool/issues/576)
    type:
        - "null"
        - type: array
          items:
              type: enum
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
            prefix: --appl

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
