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
label: "Clustal Omega"
id: "clustalo"
baseCommand: clustalo.py

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



  # Web Service Clients: Different Entries
  sequence:
    type: string?
    label: "Input sequence"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --sequence
      position: 8

  guidetreeout:
    type: string?
    label: Output guide tree
    doc: "Output guide tree."
    inputBinding:
      prefix: --guidetreeout
      position: 9
    default: "true"

  dismatout:
    type: string?
    label: Output distance matrix
    doc: "Output distance matrix. This is only calculated if the mBed-like clustering guide tree is set to false."
    inputBinding:
      prefix: --dismatout
      position: 10
    default: "true"

  dealign:
    type: string?
    label: Dealign input sequences
    doc: "Remove any existing alignment (gaps) from input sequences."
    inputBinding:
      prefix: --dealign
      position: 11
    default: "false"

  mbed:
    type: string?
    label: mBed-like clustering guide tree
    doc: "This option uses a sample of the input sequences and then represents all sequences as vectors to these sequences, enabling much more rapid generation of the guide tree, especially when the number of sequences is large."
    inputBinding:
      prefix: --mbed
      position: 12
    default: "true"

  mbediteration:
    type: string?
    label: mBed-like clustering iteration
    doc: "Use mBed-like clustering during subsequent iterations."
    inputBinding:
      prefix: --mbediteration
      position: 13
    default: "true"

  iterations:
    type: string?
    label: Number of iterations
    doc: "Number of (combined guide-tree/HMM) iterations."
    inputBinding:
      prefix: --iterations
      position: 14
    default: "0"

  gtiterations:
    type: string?
    label: Maximum guide tree iterations
    doc: "Having set the number of combined iterations, this parameter can be changed to limit the number of guide tree iterations within the combined iterations."
    inputBinding:
      prefix: --gtiterations
      position: 15
    default: "-1"

  hmmiterations:
    type: string?
    label: Maximum HMM iterations
    doc: "Having set the number of combined iterations, this parameter can be changed to limit the number of HMM iterations within the combined iterations."
    inputBinding:
      prefix: --hmmiterations
      position: 16
    default: "-1"

  outfmt:
    type: string?
    label: Output alignment format
    doc: "Format for generated multiple sequence alignment."
    inputBinding:
      prefix: --outfmt
      position: 17
    default: "clustal_num"

  order:
    type: string?
    label: Output order
    doc: "The order in which the sequences appear in the final alignment"
    inputBinding:
      prefix: --order
      position: 18
    default: "aligned"

  stype:
    type: string?
    label: Sequence Type
    doc: "Defines the type of the sequences to be aligned"
    inputBinding:
      prefix: --stype
      position: 19


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
