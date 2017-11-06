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
      location: ../tools/pfamscan_lwp.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  sequence:
    type: File
    inputBinding:
      position: 3
      prefix: --sequence
    default:
      class: File
      location: ../sequence/single.seq
    
  




  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  database:
    type: string  
    inputBinding:
      position: 5
      prefix: --database
#    default: '$defaultValue'

  evalue:
    type: double  
    inputBinding:
      position: 6
      prefix: --evalue
#    default: '$defaultValue'

  asp:
    type: boolean 
    inputBinding:
      position: 7
      prefix: --asp
#    default: '$defaultValue'

  format:
    type: string  
    inputBinding:
      position: 8
      prefix: 
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
