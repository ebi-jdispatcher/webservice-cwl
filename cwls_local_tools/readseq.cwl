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
      location: ../tools/readseq.pl

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

  inputformat:
    type: int           
    inputBinding:
      position: 5
      prefix: --inputformat
#    default: '$defaultValue'

  outputformat:
    type: int           
    inputBinding:
      position: 6
      prefix: --outputformat
#    default: '$defaultValue'

  outputcase:
    type: string        
    inputBinding:
      position: 7
      prefix: --outputcase
#    default: '$defaultValue'

  reverse:
    type: boolean       
    inputBinding:
      position: 8
      prefix: --reverse
#    default: '$defaultValue'

  degap:
    type: string        
    inputBinding:
      position: 9
      prefix: --degap
#    default: '$defaultValue'

  transymbol:
    type: string        
    inputBinding:
      position: 10
      prefix: --transymbol
#    default: '$defaultValue'

  feature:
    type: string
    inputBinding:
      position: 11
      prefix: --feature
#    default: '$defaultValue'

  fthandle:
    type: string        
    inputBinding:
      position: 12
      prefix: --fthandle
#    default: '$defaultValue'

  subrange:
    type: string        
    inputBinding:
      position: 13
      prefix: --subrange
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
