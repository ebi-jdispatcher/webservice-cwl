# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: hmmer3_phmmer_lwp.pl
hints:
  DockerRequirement:
    dockerPull: adhoc_ebitools

inputs:

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: File
    inputBinding:
      prefix: --sequence
    default:
      class: File
      location: ../sequence/single.seq

  alignView:
    type: boolean
    inputBinding:
      prefix: --alignView
#    default: '$defaultValue'

  seqdb:
    type: string
    inputBinding:
      prefix: --seqdb
#    default: '$defaultValue'

  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'

  incE:
    type: double
    inputBinding:
      prefix: --incE
#    default: '$defaultValue'

  incdomE:
    type: double
    inputBinding:
      prefix: --incdomE
#    default: '$defaultValue'

  dE:
    type: double
    inputBinding:
      prefix: --E
#    default: '$defaultValue'

  domE:
    type: double
    inputBinding:
      prefix: --domE
#    default: '$defaultValue'

  incT:
    type: double
    inputBinding:
      prefix: --incT
#    default: '$defaultValue'

  incdomT:
    type: double
    inputBinding:
      prefix: --incdomT
#    default: '$defaultValue'

  dT:
    type: double
    inputBinding:
      prefix: --T
#    default: '$defaultValue'

  domT:
    type: double
    inputBinding:
      prefix: --domT
#    default: '$defaultValue'

  popen:
    type: double
    inputBinding:
      prefix: --popen
#    default: '$defaultValue'

  pextend:
    type: double
    inputBinding:
      prefix: --pextend
#    default: '$defaultValue'

  mx:
    type: string
    inputBinding:
      prefix: --mx
#    default: '$defaultValue'

  nobias:
    type: boolean
    inputBinding:
      prefix: --nobias
#    default: '$defaultValue'


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
