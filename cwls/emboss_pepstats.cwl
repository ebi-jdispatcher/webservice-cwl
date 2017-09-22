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
      location: ../tools/emboss_pepstats.pl

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

  termini:
    type: boolean 
    inputBinding:
      position: 5
      prefix: --termini
#    default: '$defaultValue'

  mono:
    type: boolean 
    inputBinding:
      position: 6
      prefix: --mono
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
