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
baseCommand: psiblast.pl
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

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  database:
    type: string?
    inputBinding:
      prefix: --database

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  gapopen:
    type: int?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      prefix: --gapext

  expthr:
    type: double?
    inputBinding:
      prefix: --expthr

  psithr:
    type: double?
    inputBinding:
      prefix: --psithr

  scores:
    type: int?
    inputBinding:
      prefix: --scores

  alignments:
    type: int?
    inputBinding:
      prefix: --alignments

  alignView:
    type: int?
    inputBinding:
      prefix: --alignView

  dropoff:
    type: int?
    inputBinding:
      prefix: --dropoff

  finaldropoff:
    type: int?
    inputBinding:
      prefix: --finaldropoff

  filter:
    type: boolean?
    inputBinding:
      prefix: --filter

  seqrange:
    type: string?
    inputBinding:
      prefix: --seqrange

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

  wrapper-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.wrapper_out.txt"

  out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  sequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ids.txt"

  preselected-ids:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.preselected_ids.txt"

  preselected-seq:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.preselected_seq.txt"

  xml:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.xml.xml"

  visual-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-svg.svg"

  visual-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-png.png"

  visual-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.visual-jpg.jpg"

  ffdp-query-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-svg.svg"

  ffdp-query-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-png.png"

  ffdp-query-jpeg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-query-jpeg.jpg"

  ffdp-subject-svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-svg.svg"

  ffdp-subject-jpg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-jpeg.jpg"

  ffdp-subject-png:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.ffdp-subject-png.png"


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "European Bioinformatics Institute (EMBL-EBI), Web Production"
