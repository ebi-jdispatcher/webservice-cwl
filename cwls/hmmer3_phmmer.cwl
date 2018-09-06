# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: hmmer3_phmmer_lwp.pl
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
    type: File?
    inputBinding:
      position: 3
      prefix: --sequence
    default:
      class: File
      location: ../sequence/single.seq

  alignView:
    type: string?
    inputBinding:
      position: 8
      prefix: --alignView

  seqdb:
    type: string?
    inputBinding:
      position: 16
      prefix: --seqdb

  dE:
    type: double?
    inputBinding:
      position: 23
      prefix: --E

  domE:
    type: double?
    inputBinding:
      position: 24
      prefix: --domE

  incE:
    type: double?
    inputBinding:
      position: 21
      prefix: --incE

  incdomE:
    type: double?
    inputBinding:
      position: 22
      prefix: --incdomE

#  incT:
#    type: double?
#    inputBinding:
#      position: 25
#      prefix: --incT

#  incdomT:
#    type: double?
#    inputBinding:
#      position: 26
#      prefix: --incdomT

#  dT:
#    type: double?
#    inputBinding:
#      position: 27
#      prefix: --T

#  domT:
#    type: double?
#    inputBinding:
#      position: 28
#      prefix: --domT

  popen:
    type: double?
    inputBinding:
      position: 29
      prefix: --popen

  pextend:
    type: double?
    inputBinding:
      position: 30
      prefix: --pextend

  mx:
    type: string?
    inputBinding:
      position: 31
      prefix: --mx

  nobias:
    type: string?
    inputBinding:
      position: 32
      prefix: --nobias

  acc:
    type: double?
    inputBinding:
      position: 33
      prefix: --acc


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
