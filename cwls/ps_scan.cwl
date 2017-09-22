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
      location: ../tools/ps_scan.pl

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

  format:
    type: string  
    inputBinding:
      position: 5
      prefix: --format
#    default: '$defaultValue'

  database:
    type: string  
    inputBinding:
      position: 6
      prefix: --database
#    default: '$defaultValue'

  scanControl:
    type: string  
    inputBinding:
      position: 7
      prefix: --scanControl
#    default: '$defaultValue'

  commonMatch:
    type: boolean 
    inputBinding:
      position: 8
      prefix: --commonMatch
#    default: '$defaultValue'

  overlappingMatch:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --overlappingMatch
#    default: '$defaultValue'

  profileThreshold:
    type: int     
    inputBinding:
      position: 10
      prefix: --profileThreshold
#    default: '$defaultValue'

  stype:
    type: string  
    inputBinding:
      position: 11
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
