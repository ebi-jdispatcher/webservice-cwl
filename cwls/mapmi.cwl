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
      location: ../tools/mapmi.pl

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  




  
  metazoa_species:
    type: string
    inputBinding:
      position: 8
      prefix: --metazoa_species
#    default: '$defaultValue'

  ensembl_species:
    type: string
    inputBinding:
      position: 16
      prefix: --ensembl_species
#    default: '$defaultValue'

  title:
    type: string  
    inputBinding:
      position: 20
      prefix: --title
#    default: '$defaultValue'

  scorethr:
    type: int     
    inputBinding:
      position: 21
      prefix: --scorethr
#    default: '$defaultValue'

  longext:
    type: int     
    inputBinding:
      position: 22
      prefix: --longext
#    default: '$defaultValue'

  shortext:
    type: int     
    inputBinding:
      position: 23
      prefix: --shortext
#    default: '$defaultValue'

  maxmis:
    type: int     
    inputBinding:
      position: 24
      prefix: --maxmis
#    default: '$defaultValue'

  mismatchpen:
    type: int     
    inputBinding:
      position: 25
      prefix: --mismatchpen
#    default: '$defaultValue'

  bowtie:
    type: int     
    inputBinding:
      position: 26
      prefix: --bowtie
#    default: '$defaultValue'

  excludecan:
    type: boolean 
    inputBinding:
      position: 27
      prefix: --excludecan
#    default: '$defaultValue'

  maxloop:
    type: int     
    inputBinding:
      position: 28
      prefix: --maxloop
#    default: '$defaultValue'


outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
