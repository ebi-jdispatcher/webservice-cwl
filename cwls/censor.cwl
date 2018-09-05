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
      location: ../tools/censor.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  database:
    type: string 
    inputBinding:
      position: 8
      prefix: --database
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  mode:
    type: string  
    inputBinding:
      position: 13
      prefix: --mode
#    default: '$defaultValue'

  translate:
    type: boolean 
    inputBinding:
      position: 14
      prefix: --translate
#    default: '$defaultValue'

  identity:
    type: boolean 
    inputBinding:
      position: 15
      prefix: --identity
#    default: '$defaultValue'

  showsimple:
    type: boolean 
    inputBinding:
      position: 16
      prefix: --showsimple
#    default: '$defaultValue'

  maskpseudo:
    type: boolean 
    inputBinding:
      position: 17
      prefix: --maskpseudo
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
