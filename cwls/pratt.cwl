#!/usr/bin/env cwl-runner

# Copyright (C) 2018 EMBL - European Bioinformatics Institute
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
baseCommand: pratt_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:

  # Web Service Clients: Common Entries
  email:
    type: string
    doc: "Submitter's email"
    inputBinding:
      prefix: --email

  title:
    type: string?
    inputBinding:
      prefix: --title

  jobid:
    type: string?
    inputBinding:
      prefix: --jobid

  polljob:
    type: boolean?
    inputBinding:
      prefix: --polljob

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat

  pollfreq:
    type: int?
    inputBinding:
      prefix: --pollFreq

  params:
    type: boolean?
    inputBinding:
      prefix: --params
      position: 1

  paramdetails:
    type: string?
    inputBinding:
      prefix: --paramDetail

  # Web Service Clients: Different Entries
  sequence:
    type: string?
    inputBinding:
      prefix: --sequence
    default: ">UniProt/Swiss-Prot|P26898|IL2RA_SHEEP\nSP:IL2RA_SHEEP\n>UniProt/Swiss-Prot|Q95118|IL2RG_BOVIN\nSP:IL2RA_BOVIN"

  minPerc:
    type: int?
    inputBinding:
      prefix: --minPerc

  patternPosition:
    type: string?
    inputBinding:
      prefix: --patternPosition

  maxPatternLength:
    type: int?
    inputBinding:
      prefix: --maxPatternLength

  maxNumPatternSymbols:
    type: int?
    inputBinding:
      prefix: --maxNumPatternSymbols

  maxNumWildcard:
    type: int?
    inputBinding:
      prefix: --maxNumWildcard

  maxNumFlexSpaces:
    type: int?
    inputBinding:
      prefix: --maxNumFlexSpaces

  maxFlexibility:
    type: int?
    inputBinding:
      prefix: --maxFlexibility

  maxFlexProduct:
    type: int?
    inputBinding:
      prefix: --maxFlexProduct

  patternSymbolFile:
    type: boolean?
    inputBinding:
      prefix: --patternSymbolFile

  numPatternSymbols:
    type: int?
    inputBinding:
      prefix: --numPatternSymbols

  patternScoring:
    type: string?
    inputBinding:
      prefix: --patternScoring

  patternGraph:
    type: string?
    inputBinding:
      prefix: --patternGraph

  searchGreediness:
    type: int?
    inputBinding:
      prefix: --searchGreediness

  patternRefinement:
    type: boolean?
    inputBinding:
      prefix: --patternRefinement

  genAmbigSymbols:
    type: boolean?
    inputBinding:
      prefix: --genAmbigSymbols

  patternFormat:
    type: boolean?
    inputBinding:
      prefix: --patternFormat

  maxNumPatterns:
    type: int?
    inputBinding:
      prefix: --maxNumPatterns

  maxNumAlignments:
    type: int?
    inputBinding:
      prefix: --maxNumAlignments

  printPatterns:
    type: boolean?
    inputBinding:
      prefix: --printPatterns

  printingRatio:
    type: int?
    inputBinding:
      prefix: --printingRatio

  printVertically:
    type: boolean?
    inputBinding:
      prefix: --printVertically


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*.*"


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "European Bioinformatics Institute (EMBL-EBI), Web Production"
