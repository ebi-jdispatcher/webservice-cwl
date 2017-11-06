# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: emboss_needle_lwp.pl 
hints:
  DockerRequirement:
#    dockerPull: joonhlee/ebitools-container
    dockerPull: ebiwp/ebitools-container

inputs:


  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 1
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  asequence:
    type: string
    inputBinding:
      position: 2
      prefix: --asequence
    default: uniprot:wap_rat

  bsequence:
    type: string
    inputBinding:
      position: 3
      prefix: --bsequence
    default: uniprot:wap_rat


  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  matrix:
    type: string  
    inputBinding:
      position: 5
      prefix: --matrix
#    default: '$defaultValue'

  gapopen:
    type: float   
    inputBinding:
      position: 6
      prefix: --gapopen
#    default: '$defaultValue'

  gapext:
    type: float   
    inputBinding:
      position: 7
      prefix: --gapext
#    default: '$defaultValue'

  endweight:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --endweight
#    default: '$defaultValue'

  endopen:
    type: float   
    inputBinding:
      position: 9
      prefix: --endopen
#    default: '$defaultValue'

  endextend:
    type: float   
    inputBinding:
      position: 10
      prefix: --endextend
#    default: '$defaultValue'

  format_param:
    type: string  
    inputBinding:
      position: 12
      prefix: --format
#    default: '$defaultValue'

  stype:
    type: string  
    inputBinding:
      position: 13
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
