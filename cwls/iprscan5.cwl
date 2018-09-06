# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: iprscan5_lwp.pl
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

  goterms:
    type: boolean?
    inputBinding:
      prefix: --goterms

  pathways:
    type: boolean?
    inputBinding:
      prefix: --pathways

  appl:
    # It only allows one appl (last provided)
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
            prefix: --appl

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

  sequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  json:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.json.txt"
