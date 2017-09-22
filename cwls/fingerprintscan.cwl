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
      location: ../tools/fingerprintscan.pl

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

  matrix:
    type: string        
    inputBinding:
      position: 5
      prefix: --matrix
#    default: '$defaultValue'

  evalue:
    type: double        
    inputBinding:
      position: 6
      prefix: --evalue
#    default: '$defaultValue'

  distdev:
    type: int           
    inputBinding:
      position: 7
      prefix: --distdev
#    default: '$defaultValue'

  resultviews:
    type: string
    inputBinding:
      position: 8
      prefix: --resultviews
#    default: '$defaultValue'

  stype:
    type: string        
    inputBinding:
      position: 9
      prefix: --stype
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
