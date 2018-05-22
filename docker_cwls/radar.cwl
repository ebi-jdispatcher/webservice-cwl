# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: radar_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container

inputs:

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: string
    inputBinding:
      prefix: --sequence
    default: uniprot:wap_rat






  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
