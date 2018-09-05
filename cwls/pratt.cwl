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
      prefix: --email
    default: 'joonlee@ebi.ac.uk'

  sequence:
    type: string
    inputBinding:
      prefix: --sequence
    default: ">UniProt/Swiss-Prot|P26898|IL2RA_SHEEP\nSP:IL2RA_SHEEP\n>UniProt/Swiss-Prot|Q95118|IL2RG_BOVIN\nSP:IL2RA_BOVIN"

  title:
    type: string
    inputBinding:
      prefix: --title
#    default: '$defaultValue'

  minPerc:
    type: int
    inputBinding:
      prefix: --minPerc
#    default: '$defaultValue'

  patternPosition:
    type: string
    inputBinding:
      prefix: --patternPosition
#    default: '$defaultValue'

  maxPatternLength:
    type: int
    inputBinding:
      prefix: --maxPatternLength
#    default: '$defaultValue'

  maxNumPatternSymbols:
    type: int
    inputBinding:
      prefix: --maxNumPatternSymbols
#    default: '$defaultValue'

  maxNumWildcard:
    type: int
    inputBinding:
      prefix: --maxNumWildcard
#    default: '$defaultValue'

  maxNumFlexSpaces:
    type: int
    inputBinding:
      prefix: --maxNumFlexSpaces
#    default: '$defaultValue'

  maxFlexibility:
    type: int
    inputBinding:
      prefix: --maxFlexibility
#    default: '$defaultValue'

  maxFlexProduct:
    type: int
    inputBinding:
      prefix: --maxFlexProduct
#    default: '$defaultValue'

  patternSymbolFile:
    type: boolean
    inputBinding:
      prefix: --patternSymbolFile
#    default: '$defaultValue'

  numPatternSymbols:
    type: int
    inputBinding:
      prefix: --numPatternSymbols
#    default: '$defaultValue'

  patternScoring:
    type: string
    inputBinding:
      prefix: --patternScoring
#    default: '$defaultValue'

  patternGraph:
    type: string
    inputBinding:
      prefix: --patternGraph
#    default: '$defaultValue'

  searchGreediness:
    type: int
    inputBinding:
      prefix: --searchGreediness
#    default: '$defaultValue'

  patternRefinement:
    type: boolean
    inputBinding:
      prefix: --patternRefinement
#    default: '$defaultValue'

  genAmbigSymbols:
    type: boolean
    inputBinding:
      prefix: --genAmbigSymbols
#    default: '$defaultValue'

  patternFormat:
    type: boolean
    inputBinding:
      prefix: --patternFormat
#    default: '$defaultValue'

  maxNumPatterns:
    type: int
    inputBinding:
      prefix: --maxNumPatterns
#    default: '$defaultValue'

  maxNumAlignments:
    type: int
    inputBinding:
      prefix: --maxNumAlignments
#    default: '$defaultValue'

  printPatterns:
    type: boolean
    inputBinding:
      prefix: --printPatterns
#    default: '$defaultValue'

  printingRatio:
    type: int
    inputBinding:
      prefix: --printingRatio
#    default: '$defaultValue'

  printVertically:
    type: boolean
    inputBinding:
      prefix: --printVertically
#    default: '$defaultValue'




outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"
