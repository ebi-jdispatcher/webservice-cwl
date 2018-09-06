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
      location: ../sequence/hmmer.seq
  
  alignView:
    type: string
    inputBinding:
      position: 8
      prefix: --alignView

  title:
    type: string  
    inputBinding:
      position: 12
      prefix: --title

  dE:
    type: double  
    inputBinding:
      position: 15
      prefix: --E

  incE:
    type: double  
    inputBinding:
      position: 13
      prefix: --incE

  domE:
    type: double  
    inputBinding:
      position: 16
      prefix: --domE

  incdomE:
    type: double  
    inputBinding:
      position: 14
      prefix: --incdomE

#  dT:
#    type: double  
#    inputBinding:
#      position: 19
#      prefix: --T

#  incT:
#    type: double  
#    inputBinding:
#      position: 17
#      prefix: --incT

#  domT:
#    type: double  
#    inputBinding:
#      position: 20
#      prefix: --domT

#  incdomT:
#    type: double  
#    inputBinding:
#      position: 18
#      prefix: --incdomT

  cut_ga:
    type: string 
    inputBinding:
      position: 21
      prefix: --cut_ga

  nobias:
    type: string 
    inputBinding:
      position: 22
      prefix: --nobias

  hmmdb:
    type: string  
    inputBinding:
      position: 23
      prefix: --hmmdb

outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
