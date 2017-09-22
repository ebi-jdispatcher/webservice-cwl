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
      location: ../tools/wise2dba.pl

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

  para:
    type: boolean 
    inputBinding:
      position: 5
      prefix: --para
#    default: '$defaultValue'

  pretty:
    type: boolean 
    inputBinding:
      position: 6
      prefix: --pretty
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
