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
      location: ../tools/clustalw2_phylogeny.pl

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

  tree:
    type: string  
    inputBinding:
      position: 5
      prefix: --tree
#    default: '$defaultValue'

  kimura:
    type: boolean 
    inputBinding:
      position: 6
      prefix: --kimura
#    default: '$defaultValue'

  tossgaps:
    type: boolean 
    inputBinding:
      position: 7
      prefix: --tossgaps
#    default: '$defaultValue'

  clustering:
    type: string  
    inputBinding:
      position: 8
      prefix: --clustering
#    default: '$defaultValue'

  pim:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --pim
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
