# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: hmmer3_phmmer_lwp.pl
hints:
  DockerRequirement:
    dockerPull: adhoc_ebitools

inputs:

  command:
    type: File
    inputBinding:
      position: 0

    default:
      class: File
      location: ../tools/hmmer3_phmmer_lwp.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: File
    inputBinding:
      position: 3
      prefix: --sequence
    default:
      class: File
      location: ../sequence/single.seq

  alignView:
    type: boolean
    inputBinding:
      position: 8
      prefix: --alignView
#    default: '$defaultValue'

  seqdb:
    type: string
    inputBinding:
      position: 16
      prefix: --seqdb
#    default: '$defaultValue'

  title:
    type: string
    inputBinding:
      position: 20
      prefix: --title
#    default: '$defaultValue'

  incE:
    type: double
    inputBinding:
      position: 21
      prefix: --incE
#    default: '$defaultValue'

  incdomE:
    type: double
    inputBinding:
      position: 22
      prefix: --incdomE
#    default: '$defaultValue'

  dE:
    type: double
    inputBinding:
      position: 23
      prefix: --E
#    default: '$defaultValue'

  domE:
    type: double
    inputBinding:
      position: 24
      prefix: --domE
#    default: '$defaultValue'

  incT:
    type: double
    inputBinding:
      position: 25
      prefix: --incT
#    default: '$defaultValue'

  incdomT:
    type: double
    inputBinding:
      position: 26
      prefix: --incdomT
#    default: '$defaultValue'

  dT:
    type: double
    inputBinding:
      position: 27
      prefix: --T
#    default: '$defaultValue'

  domT:
    type: double
    inputBinding:
      position: 28
      prefix: --domT
#    default: '$defaultValue'

  popen:
    type: double
    inputBinding:
      position: 29
      prefix: --popen
#    default: '$defaultValue'

  pextend:
    type: double
    inputBinding:
      position: 30
      prefix: --pextend
#    default: '$defaultValue'

  mx:
    type: string
    inputBinding:
      position: 31
      prefix: --mx
#    default: '$defaultValue'

  nobias:
    type: boolean
    inputBinding:
      position: 32
      prefix: --nobias
#    default: '$defaultValue'


outputs:
  cwl_out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
