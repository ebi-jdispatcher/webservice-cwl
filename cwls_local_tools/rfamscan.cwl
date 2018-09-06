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
      location: ../tools/rfamscan.pl

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

  bitscore:
    type: double  
    inputBinding:
      position: 5
      prefix: --bitscore
#    default: '$defaultValue'

  evalue:
    type: double  
    inputBinding:
      position: 6
      prefix: --evalue
#    default: '$defaultValue'

  searchmode:
    type: string  
    inputBinding:
      position: 7
      prefix: --searchmode
#    default: '$defaultValue'

  filter:
    type: string  
    inputBinding:
      position: 8
      prefix: --filter
#    default: '$defaultValue'

  nobig:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --nobig
#    default: '$defaultValue'

  exclude:
    type: string  
    inputBinding:
      position: 10
      prefix: --exclude
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
