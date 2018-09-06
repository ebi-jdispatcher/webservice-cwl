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
      location: ../tools/raxml_epa.pl

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

  algorithm:
    type: string 
    inputBinding:
      position: 5
      prefix: --algorithm
#    default: '$defaultValue'

  alignment:
    type: string 
    inputBinding:
      position: 6
      prefix: --alignment
#    default: '$defaultValue'

  newick:
    type: string 
    inputBinding:
      position: 7
      prefix: --newick
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
