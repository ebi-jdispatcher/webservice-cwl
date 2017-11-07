# European Bioinformatics Institute (EMBL-EBI), Web Production
cwlVersion: v1.0
class: CommandLineTool
baseCommand: pratt_lwp.pl 
hints:
  DockerRequirement:
    dockerPull: ebiwp/ebitools-container

inputs:

  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      position: 2
      prefix: --email
    default: 'joonlee@ebi.ac.uk'
    
  sequence:
    type: string
    inputBinding:
      position: 3
      prefix: --sequence
    default: ">UniProt/Swiss-Prot|P26898|IL2RA_SHEEP\nSP:IL2RA_SHEEP\n>UniProt/Swiss-Prot|Q95118|IL2RG_BOVIN\nSP:IL2RA_BOVIN"
  
  title:
    type: string       
    inputBinding:
      position: 4
      prefix: --title
#    default: '$defaultValue'

  minPerc:
    type: int          
    inputBinding:
      position: 5
      prefix: --minPerc
#    default: '$defaultValue'

  patternPosition:
    type: string       
    inputBinding:
      position: 6
      prefix: --patternPosition
#    default: '$defaultValue'

  maxPatternLength:
    type: int          
    inputBinding:
      position: 7
      prefix: --maxPatternLength
#    default: '$defaultValue'

  maxNumPatternSymbols:
    type: int          
    inputBinding:
      position: 8
      prefix: --maxNumPatternSymbols
#    default: '$defaultValue'

  maxNumWildcard:
    type: int          
    inputBinding:
      position: 9
      prefix: --maxNumWildcard
#    default: '$defaultValue'

  maxNumFlexSpaces:
    type: int          
    inputBinding:
      position: 10
      prefix: --maxNumFlexSpaces
#    default: '$defaultValue'

  maxFlexibility:
    type: int          
    inputBinding:
      position: 11
      prefix: --maxFlexibility
#    default: '$defaultValue'

  maxFlexProduct:
    type: int          
    inputBinding:
      position: 12
      prefix: --maxFlexProduct
#    default: '$defaultValue'

  patternSymbolFile:
    type: boolean      
    inputBinding:
      position: 13
      prefix: --patternSymbolFile
#    default: '$defaultValue'

  numPatternSymbols:
    type: int          
    inputBinding:
      position: 14
      prefix: --numPatternSymbols
#    default: '$defaultValue'

  patternScoring:
    type: string       
    inputBinding:
      position: 15
      prefix: --patternScoring
#    default: '$defaultValue'

  patternGraph:
    type: string       
    inputBinding:
      position: 16
      prefix: --patternGraph
#    default: '$defaultValue'

  searchGreediness:
    type: int          
    inputBinding:
      position: 17
      prefix: --searchGreediness
#    default: '$defaultValue'

  patternRefinement:
    type: boolean      
    inputBinding:
      position: 18
      prefix: --patternRefinement
#    default: '$defaultValue'

  genAmbigSymbols:
    type: boolean      
    inputBinding:
      position: 19
      prefix: --genAmbigSymbols
#    default: '$defaultValue'

  patternFormat:
    type: boolean      
    inputBinding:
      position: 20
      prefix: --patternFormat
#    default: '$defaultValue'

  maxNumPatterns:
    type: int          
    inputBinding:
      position: 21
      prefix: --maxNumPatterns
#    default: '$defaultValue'

  maxNumAlignments:
    type: int          
    inputBinding:
      position: 22
      prefix: --maxNumAlignments
#    default: '$defaultValue'

  printPatterns:
    type: boolean      
    inputBinding:
      position: 23
      prefix: --printPatterns
#    default: '$defaultValue'

  printingRatio:
    type: int          
    inputBinding:
      position: 24
      prefix: --printingRatio
#    default: '$defaultValue'

  printVertically:
    type: boolean      
    inputBinding:
      position: 25
      prefix: --printVertically
#    default: '$defaultValue'




outputs: 
  cwl_out: 
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
