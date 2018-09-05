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
      location: ../tools/dalilite.pl

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

  structure1:
    type: string 
    inputBinding:
      position: 5
      prefix: --structure1
#    default: '$defaultValue'

  chainid1:
    type: string 
    inputBinding:
      position: 6
      prefix: --chainid1
#    default: '$defaultValue'

  structure2:
    type: string 
    inputBinding:
      position: 7
      prefix: --structure2
#    default: '$defaultValue'

  chainid2:
    type: string 
    inputBinding:
      position: 8
      prefix: --chainid2
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
