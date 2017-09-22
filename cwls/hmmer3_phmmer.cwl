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
      location: ../tools/hmmer3_phmmer.pl

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
      location: single.seq




  
  alignView:
    type: 
    inputBinding:
      position: 8
      prefix: --alignView
#    default: '$defaultValue'

  sequenceDatabase:
    type: string  
    inputBinding:
      position: 16
      prefix: --sequenceDatabase
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 20
      prefix: --title
#    default: '$defaultValue'

  incE:
    type: string  
    inputBinding:
      position: 21
      prefix: --incE
#    default: '$defaultValue'

  incdomE:
    type: string  
    inputBinding:
      position: 22
      prefix: --incdomE
#    default: '$defaultValue'

  dE:
    type: string  
    inputBinding:
      position: 23
      prefix: --E
#    default: '$defaultValue'

  domE:
    type: string  
    inputBinding:
      position: 24
      prefix: --domE
#    default: '$defaultValue'

  incT:
    type: string  
    inputBinding:
      position: 25
      prefix: --incT
#    default: '$defaultValue'

  incdomT:
    type: string  
    inputBinding:
      position: 26
      prefix: --incdomT
#    default: '$defaultValue'

  dT:
    type: string  
    inputBinding:
      position: 27
      prefix: --T
#    default: '$defaultValue'

  domT:
    type: string  
    inputBinding:
      position: 28
      prefix: --domT
#    default: '$defaultValue'

  popen:
    type: string  
    inputBinding:
      position: 29
      prefix: --popen
#    default: '$defaultValue'

  pextend:
    type: string  
    inputBinding:
      position: 30
      prefix: --pextend
#    default: '$defaultValue'

  mx:
    type: string  
    inputBinding:
      position: 31
      prefix: --mx
#    default: '$defaultValue'

  nobias:
    type: boolean 
    inputBinding:
      position: 32
      prefix: --nobias
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
