# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: pfamscan_lwp.pl
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
    default: uniprot:wap_rat

  database:
    type: string?
    inputBinding:
      prefix: --database

  evalue:
    type: double?
    inputBinding:
      prefix: --evalue

  asp:
    type: boolean?
    inputBinding:
      prefix: --asp

  format:
    type: string?
    inputBinding:
      prefix:


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
