#!/usr/bin/env cwl-runner

# Copyright (C) 2019 - 2021 EMBL - European Bioinformatics Institute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#      http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cwlVersion: v1.0
class: CommandLineTool
label: "PRATT"
id: "pratt"
baseCommand: pratt.py

hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:
  # Web Service Clients: Common Entries
  email:
    type: string?
    doc: "E-mail address"
    inputBinding:
      prefix: --email
      position: 2

  title:
    type: string?
    doc: "Job title"
    inputBinding:
      prefix: --title
      position: 3

  jobid:
    type: string?
    doc: "Job identifier"
    inputBinding:
      prefix: --jobid
      position: 1

  polljob:
    type: boolean?
    doc: "Get job result"
    inputBinding:
      prefix: --polljob
      position: 2

  outfile:
    type: string?
    doc: "File name for results"
    inputBinding:
      prefix: --outfile
      position: 4

  outformat:
    type: string?
    doc: "Output format for results"
    inputBinding:
      prefix: --outformat
      position: 5

  pollfreq:
    type: int?
    doc: "Poll frequency in seconds (default 3s)"
    inputBinding:
      prefix: --pollFreq
      position: 6

  params:
    type: boolean?
    doc: "List input parameters"
    inputBinding:
      prefix: --params
      position: 1

  paramdetails:
    type: string?
    doc: "Get details for parameter"
    inputBinding:
      prefix: --paramDetail
      position: 1

  resultTypes:
    type: string?
    doc: "Get result types"
    inputBinding:
      prefix: --resultTypes
      position: 1

  asyncjob:
    type: boolean?
    doc: "Asynchronous mode"
    inputBinding:
      prefix: --asyncjob
      position: 2

  status:
    type: boolean?
    doc: "Get job status"
    inputBinding:
      prefix: --status
      position: 2

  version:
    type: boolean?
    doc: "Prints out the version of the Client and exit"
    inputBinding:
      prefix: --version
      position: 1

  baseUrl:
    type: string?
    doc: "Base URL for service"
    inputBinding:
      prefix: --baseUrl
      position: 7


  multifasta:
    type: boolean?
    doc: "Treat input as a set of fasta formatted sequences"
    inputBinding:
      prefix: --multifasta
      position: 8

  useSeqId:
    type: boolean?
    doc: "Use sequence identifiers for output filenames. Only available in multi-fasta and multi-identifier modes"
    inputBinding:
      prefix: --useSeqId
      position: 9

  maxJobs:
    type: int?
    doc: "Maximum number of concurrent jobs. Only available in multifasta or list file modes (default 20 jobs)"
    inputBinding:
      prefix: --maxJobs
      position: 10

  # Web Service Clients: Different Entries
  sequence:
    type: string?
    label: "Input sequence"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --sequence
      position: 8

  minPerc:
    type: string?
    label: Min Percentage Seqs to Match
    doc: "Set the minimum percentage of the input sequences that should match a pattern (C%). 
				If you set this to, say 80, Pratt will only report patterns matching at least 80 % of the sequences input. 
			"
    inputBinding:
      prefix: --minPerc
      position: 9

  patternPosition:
    type: string?
    label: Pattern Position
    doc: "Pattern position in sequence (PP parameter)"
    inputBinding:
      prefix: --patternPosition
      position: 10
    default: "off"

  maxPatternLength:
    type: string?
    label: Max Pattern Length
    doc: "Maximum pattern length (PL parameter) allows you to set the maximum length of a pattern. 
				The length of the pattern C-x(2,4)-[DE] is 1+4+1=6. 
				The memory requirement of Pratt depends on L; a higher L value gives higher memory requirement.
			"
    inputBinding:
      prefix: --maxPatternLength
      position: 11

  maxNumPatternSymbols:
    type: string?
    label: Max Number Of Pattern Symbols
    doc: "Maximum number of pattern symbols (PN parameter). Using this you can set the maximum number of symbols in a pattern. 
				The pattern C-x(2,4)-[DE] has 2 symbols (C and [DE]). When PN is increased, Pratt will require more memory. 
			"
    inputBinding:
      prefix: --maxNumPatternSymbols
      position: 12

  maxNumWildcard:
    type: string?
    label: Max Num Of Wildcard
    doc: "Maximum length of a widecard (x). 
				Using this option  you can set the maximum length of a wildcard (PX parameter). Increasing this will increase the time used by Pratt, and also slightly the memory required. 
			"
    inputBinding:
      prefix: --maxNumWildcard
      position: 13

  maxNumFlexSpaces:
    type: string?
    label: Max Num Of Flexible Spaces
    doc: "Maximum length of flexible spaces.  
				Using this option you can set the maximum number of flexible wildcards (matching a variable number of arbitrary sequence symbols) (FN parameter). Increasing this will increase the time used by Pratt. 
			"
    inputBinding:
      prefix: --maxNumFlexSpaces
      position: 14

  maxFlexibility:
    type: string?
    label: Maximum Flexibility
    doc: "Maximum flexibility.
				You can set the maximum flexibility of a flexible wildcard (matching a variable number of arbitrary sequence symbols) (FL parameter). 
				For instance x(2,4) and x(10,12) has flexibility 2, and x(10) has flexibility 0. Increasing this will increase the time used by Pratt. 
			"
    inputBinding:
      prefix: --maxFlexibility
      position: 15

  maxFlexProduct:
    type: string?
    label: Maximum Flex. Product
    doc: "Maximum flex. product.
				Using this option you can set an upper limit on the product of a flexibilities for a pattern (FP parameter). 
				This is related to the memory requirements of the search, and increasing the limit, increases the memory usage. 
			"
    inputBinding:
      prefix: --maxFlexProduct
      position: 16

  patternSymbolFile:
    type: string?
    label: Pattern Symbol File
    doc: "Pattern Symbol File (BI parameter)"
    inputBinding:
      prefix: --patternSymbolFile
      position: 17
    default: "false"

  numPatternSymbols:
    type: string?
    label: Number Of Pattern Symbols
    doc: "Number of pattern symbols used in the initial search (BN parameter).
			"
    inputBinding:
      prefix: --numPatternSymbols
      position: 18

  patternScoring:
    type: string?
    label: Pattern Scoring
    doc: "Pattern scoring (S parameter)"
    inputBinding:
      prefix: --patternScoring
      position: 19
    default: "info"

  patternGraph:
    type: string?
    label: Pattern Graph
    doc: "Pattern Graph (G parameter) allows the use of an alignment or a query sequence to restrict the pattern search."
    inputBinding:
      prefix: --patternGraph
      position: 20

  searchGreediness:
    type: string?
    label: Search Greediness
    doc: "Using the greediness parameter (E) you can adjust the greediness of the search. Setting E to 0 (zero), the search will be exhaustive. 
				Increasing E increases the greediness, and decreases the time used in the search. 
			"
    inputBinding:
      prefix: --searchGreediness
      position: 21

  patternRefinement:
    type: string?
    label: Pattern Refinement
    doc: "Pattern Refinement (R parameter). 
				When the R option is switched on, patterns found during the initial pattern search are input to a refinement algorithm where more ambiguous pattern symbols can be added. 
			"
    inputBinding:
      prefix: --patternRefinement
      position: 22
    default: "false"

  genAmbigSymbols:
    type: string?
    label: Generalise Ambiguous Symbols
    doc: "Generalise ambiguous symbols (RG parameter). 
				If the RG option is switched on, then ambiguous symbols listed in the symbols file are used. 
				If RG is off, only the letters needed to match the input sequences are included in the ambiguous pattern positions. 
			"
    inputBinding:
      prefix: --genAmbigSymbols
      position: 23
    default: "false"

  patternFormat:
    type: string?
    label: PROSITE Pattern Format
    doc: "PROSITE Pattern Format (OP parameter).
				When switched on, patterns will be output in PROSITE style (for instance C-x(2,4)-[DE]). 
				When switched off, patterns are output in a simpler consensus pattern style (for instance Cxx--[DE]
				where x matches exactly one arbitrary sequence symbol and - matches zero or one arbitrary sequence symbol).
			"
    inputBinding:
      prefix: --patternFormat
      position: 24
    default: "true"

  maxNumPatterns:
    type: string?
    label: Max Number Patterns
    doc: "Maximum number of patterns (ON parameter) between 1 and 100.
			"
    inputBinding:
      prefix: --maxNumPatterns
      position: 25

  maxNumAlignments:
    type: string?
    label: Max Number Alignments
    doc: "Maximum number of alignments (OA parameter) between 1 and 100. 
			"
    inputBinding:
      prefix: --maxNumAlignments
      position: 26

  printPatterns:
    type: string?
    label: Print Patterns
    doc: "Print Patterns in sequences (M parameter)
				If the M option is set, then Pratt will print out the location of the sequence segments matching each of the (maximum 52) best patterns. 
				The patterns are given labels A, B,...Z,a,b,...z in order of decreasing pattern score. Each sequence is printed on a line, one character per K-tuple in the sequence. 
				If pattern with label C matches the third K-tuple in a sequence C is printed out. If several patterns match in the same K-tuple, only the best will be printed. 
			"
    inputBinding:
      prefix: --printPatterns
      position: 27
    default: "true"

  printingRatio:
    type: string?
    label: Printing Ratio
    doc: "Printing ratio (MR parameter). sets the K value (ratio) used for printing the summary information about where in each sequence the pattern matches are found.
			"
    inputBinding:
      prefix: --printingRatio
      position: 28

  printVertically:
    type: string?
    label: Print Vertically
    doc: "Print vertically (MV parameter). if set, the output is printed vertically instead of horizontally, vertical output can be better for large sequence sets."
    inputBinding:
      prefix: --printVertically
      position: 29
    default: "false"

  stype:
    type: string?
    label: Sequence Type
    doc: "Defines the type of the sequences to be aligned."
    inputBinding:
      prefix: --stype
      position: 30

  ppfile:
    type: string?
    label: Pattern Restriction File
    doc: "Pattern restriction file. 
				The restriction file limits the sequence range via the start/end parameter and is in the format '>Sequence (start, end)'. If parameter PP is off, the restiction file will be ignored."
    inputBinding:
      prefix: --ppfile
      position: 31


outputs:
  all:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"


$schemas:
  - https://schema.org/version/latest/schema.rdf

$namespaces:
  s: http://schema.org/
  edam: http://edamontology.org/

s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0001-8728-9449
    s:email: mailto:www-prod@ebi.ac.uk
    s:name: Fábio Madeira (Web Production)
    s:worksFor:
    - class: s:Organization
      s:name: EMBL - European Bioinformatics Institute
      s:location: Hinxton, Cambridgeshire, CB10 1SD, UK
      s:department:
      - class: s:Organization
        s:name: Web Production

# s:citation: https://dx.doi.org/10.6084/m9.figshare.3115156.v2
# s:codeRepository: https://github.com/common-workflow-language/common-workflow-language
s:dateCreated: "2018-08-03"

# s:license:
s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "EMBL - European Bioinformatics Institute"
