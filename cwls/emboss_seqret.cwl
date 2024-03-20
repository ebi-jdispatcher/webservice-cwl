#!/usr/bin/env cwl-runner

# Copyright (C) 2019 - 2024 EMBL - European Bioinformatics Institute
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
label: "EMBOSS seqret"
id: "emboss_seqret"
baseCommand: python

inputs:
  # Web Service Clients: Common Entries
  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/emboss_seqret.py

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



  # Web Service Clients: Different Entries
  sequence_file:
    type: File?
    label: "Input sequence"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --sequence
      position: 8

  sequence_string:
    type: string?
    label: "Input sequence"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --sequence
      position: 8

  stype:
    type: string?
    label: Sequence type
    doc: "Indicates if the query sequence is protein, DNA or RNA."
    inputBinding:
      prefix: --stype
      position: 9

  inputformat:
    type: string?
    label: Input Format
    doc: "Input format name"
    inputBinding:
      prefix: --inputformat
      position: 10
    default: "unknown"

  outputformat:
    type: string?
    label: Output Format
    doc: "Output format name. "
    inputBinding:
      prefix: --outputformat
      position: 11
    default: "embl"

  feature:
    type: string?
    label: Use Feature Information
    doc: "Use feature information"
    inputBinding:
      prefix: --feature
      position: 12
    default: "true"

  firstonly:
    type: string?
    label: First Sequence Only
    doc: "Read one sequence and stop"
    inputBinding:
      prefix: --firstonly
      position: 13
    default: "false"

  reverse:
    type: string?
    label: Reverse-Complement of Sequences
    doc: "Reverse-complement of input DNA sequences"
    inputBinding:
      prefix: --reverse
      position: 14
    default: "false"

  outputcase:
    type: string?
    label: Change Output Case
    doc: "Change alphabet case for output sequences."
    inputBinding:
      prefix: --outputcase
      position: 15
    default: "none"

  seqrange:
    type: string?
    label: Sequence range
    doc: "Specify a range or section of the input sequence to use in the search. Example: Specifying '34-89' in an input sequence of total length 100, will tell EMBOSS seqret to only use residues 34 to 89, inclusive."
    inputBinding:
      prefix: --seqrange
      position: 16


outputs:
  all:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"


$schemas:
  - https://schema.org/version/latest/schemaorg-current-https.rdf

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
