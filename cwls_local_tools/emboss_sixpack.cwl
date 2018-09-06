# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: perl 
inputs:

  command: 
    type: File
    inputBinding:
      position: 0
       
    default:
      class: File
      location: ../tools/emboss_sixpack.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  codontable:
    type: string  
    inputBinding:
      position: 5
      prefix: --codontable
#    default: '$defaultValue'

  firstorf:
    type: boolean 
    inputBinding:
      position: 6
      prefix: --firstorf
#    default: '$defaultValue'

  lastorf:
    type: boolean 
    inputBinding:
      position: 7
      prefix: --lastorf
#    default: '$defaultValue'

  reverse:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --reverse
#    default: '$defaultValue'

  orfminsize:
    type: string  
    inputBinding:
      position: 9
      prefix: --orfminsize
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
