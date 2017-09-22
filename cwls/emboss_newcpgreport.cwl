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
      location: ../tools/emboss_newcpgreport.pl

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

  window:
    type: int    
    inputBinding:
      position: 5
      prefix: --window
#    default: '$defaultValue'

  minlen:
    type: int    
    inputBinding:
      position: 6
      prefix: --minlen
#    default: '$defaultValue'

  minoe:
    type: double 
    inputBinding:
      position: 7
      prefix: --minoe
#    default: '$defaultValue'

  minpc:
    type: double 
    inputBinding:
      position: 8
      prefix: --minpc
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
