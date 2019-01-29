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
      location: ../tools/dbclustal.pl

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

  output:
    type: string 
    inputBinding:
      position: 5
      prefix: --output
#    default: '$defaultValue'

  blastreport:
    type: string 
    inputBinding:
      position: 6
      prefix: --blastreport
#    default: '$defaultValue'

  idlist:
    type: string 
    inputBinding:
      position: 7
      prefix: --idlist
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
