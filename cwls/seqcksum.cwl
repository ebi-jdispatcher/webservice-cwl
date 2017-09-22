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
      location: ../tools/seqcksum.pl

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

  cksmethod:
    type: string
    inputBinding:
      position: 13
      prefix: --cksmethod
#    default: '$defaultValue'

  length:
    type: boolean       
    inputBinding:
      position: 14
      prefix: --length
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
