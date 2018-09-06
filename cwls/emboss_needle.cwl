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
baseCommand: emboss_needle_lwp.pl
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
  asequence:
    type: string?
    inputBinding:
      prefix: --asequence

  bsequence:
    type: string?
    inputBinding:
      prefix: --bsequence

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  gapopen:
    type: float?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: float?
    inputBinding:
      prefix: --gapext

  endweight:
    type: boolean?
    inputBinding:
      prefix: --endweight

  endopen:
    type: float?
    inputBinding:
      prefix: --endopen

  endextend:
    type: float?
    inputBinding:
      prefix: --endextend

  format-alignment:
    type:
        - "null"
        - type: enum
          symbols:
            - pair
            - markx0
            - markx1
            - markx2
            - markx3
            - markx10
            - srspair
            - score
          inputBinding:
            prefix: --format

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  input-file:
    type: File?
    inputBinding:
      position: 1


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  asequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.asequence.txt"

  bsequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.bsequence.txt"

  aln:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.aln.*"


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "European Bioinformatics Institute (EMBL-EBI), Web Production"
