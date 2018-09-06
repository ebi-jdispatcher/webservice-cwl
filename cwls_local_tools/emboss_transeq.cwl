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
      location: ../tools/emboss_transeq.pl

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

  frame:
    type: string  
    inputBinding:
      position: 5
      prefix: --frame
#    default: '$defaultValue'

  codontable:
    type: string  
    inputBinding:
      position: 6
      prefix: --codontable
#    default: '$defaultValue'

  regions:
    type: string  
    inputBinding:
      position: 7
      prefix: --regions
#    default: '$defaultValue'

  trim:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --trim
#    default: '$defaultValue'

  reverse:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --reverse
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
