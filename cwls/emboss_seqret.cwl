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
      location: ../tools/emboss_seqret.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  stype:
    type: string 
    inputBinding:
      position: 8
      prefix: --stype
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  inputformat:
    type: string  
    inputBinding:
      position: 13
      prefix: --inputformat
#    default: '$defaultValue'

  outputformat:
    type: string  
    inputBinding:
      position: 14
      prefix: --outputformat
#    default: '$defaultValue'

  feature:
    type: boolean 
    inputBinding:
      position: 15
      prefix: --feature
#    default: '$defaultValue'

  firstonly:
    type: boolean 
    inputBinding:
      position: 16
      prefix: --firstonly
#    default: '$defaultValue'

  reverse:
    type: boolean 
    inputBinding:
      position: 17
      prefix: --reverse
#    default: '$defaultValue'

  outputcase:
    type: string  
    inputBinding:
      position: 18
      prefix: --outputcase
#    default: '$defaultValue'

  seqrange:
    type: string  
    inputBinding:
      position: 19
      prefix: --seqrange
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
