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
      location: ../tools/mview_lwp.pl

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
      location: ../sequence/multi.seq




  
  title:
    type: string  
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  stype:
    type: string  
    inputBinding:
      position: 5
      prefix: --stype
#    default: '$defaultValue'

  informat:
    type: string  
    inputBinding:
      position: 6
      prefix: --informat
#    default: '$defaultValue'

  outputformat:
    type: string  
    inputBinding:
      position: 7
      prefix: --outputformat
#    default: '$defaultValue'

  htmlmarkup:
    type: string  
    inputBinding:
      position: 8
      prefix: --htmlmarkup
#    default: '$defaultValue'

  css:
    type: boolean 
    inputBinding:
      position: 9
      prefix: --css
#    default: '$defaultValue'

  pcid:
    type: string  
    inputBinding:
      position: 10
      prefix: --pcid
#    default: '$defaultValue'

  alignment:
    type: boolean 
    inputBinding:
      position: 11
      prefix: --alignment
#    default: '$defaultValue'

  ruler:
    type: boolean 
    inputBinding:
      position: 12
      prefix: --ruler
#    default: '$defaultValue'

  width:
    type: int     
    inputBinding:
      position: 13
      prefix: --width
#    default: '$defaultValue'

  coloring:
    type: string  
    inputBinding:
      position: 14
      prefix: --coloring
#    default: '$defaultValue'

  colormap:
    type: string  
    inputBinding:
      position: 15
      prefix: --colormap
#    default: '$defaultValue'

  groupmap:
    type: string  
    inputBinding:
      position: 16
      prefix: --groupmap
#    default: '$defaultValue'

  consensus:
    type: boolean 
    inputBinding:
      position: 17
      prefix: --consensus
#    default: '$defaultValue'

  concoloring:
    type: string  
    inputBinding:
      position: 18
      prefix: --concoloring
#    default: '$defaultValue'

  concolormap:
    type: string  
    inputBinding:
      position: 19
      prefix: --concolormap
#    default: '$defaultValue'

  congroupmap:
    type: string  
    inputBinding:
      position: 20
      prefix: --congroupmap
#    default: '$defaultValue'

  congaps:
    type: boolean 
    inputBinding:
      position: 21
      prefix: --congaps
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
