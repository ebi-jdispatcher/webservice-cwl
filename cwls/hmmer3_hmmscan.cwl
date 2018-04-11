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
      location: ../tools/hmmer3_hmmscan_lwp.pl

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




  
  alignView:
    type: boolean
    inputBinding:
      position: 8
      prefix: --alignView
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 12
      prefix: --title
#    default: '$defaultValue'

  incE:
    type: double  
    inputBinding:
      position: 13
      prefix: --incE
#    default: '$defaultValue'

  incdomE:
    type: double  
    inputBinding:
      position: 14
      prefix: --incdomE
#    default: '$defaultValue'

  dE:
    type: double  
    inputBinding:
      position: 15
      prefix: --E
#    default: '$defaultValue'

  domE:
    type: double  
    inputBinding:
      position: 16
      prefix: --domE
#    default: '$defaultValue'

  incT:
    type: double  
    inputBinding:
      position: 17
      prefix: --incT
#    default: '$defaultValue'

  incdomT:
    type: double  
    inputBinding:
      position: 18
      prefix: --incdomT
#    default: '$defaultValue'

  dT:
    type: double  
    inputBinding:
      position: 19
      prefix: --T
#    default: '$defaultValue'

  domT:
    type: double  
    inputBinding:
      position: 20
      prefix: --domT
#    default: '$defaultValue'

  cut_ga:
    type: boolean 
    inputBinding:
      position: 21
      prefix: --cut_ga
#    default: '$defaultValue'

  nobias:
    type: boolean 
    inputBinding:
      position: 22
      prefix: --nobias
#    default: '$defaultValue'

  hmmdb:
    type: string  
    inputBinding:
      position: 23
      prefix: --hmmDatabase
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
