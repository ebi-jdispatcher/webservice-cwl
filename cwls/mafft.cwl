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
label: "Mafft"
id: "mafft"
baseCommand: python

inputs:
  # Web Service Clients: Common Entries
  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/mafft.py

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

  format:
    type: string?
    label: Alignment format
    doc: "Format for generated multiple sequence alignment."
    inputBinding:
      prefix: --format
      position: 9
    default: "fasta"

  matrix:
    type: string?
    label: Matrix
    doc: "Protein comparison matrix to be used when adding sequences to the alignment."
    inputBinding:
      prefix: --matrix
      position: 10
    default: "bl62"

  gapopen:
    type: string?
    label: Gap Open
    doc: "Penalty for first base/residue in a gap."
    inputBinding:
      prefix: --gapopen
      position: 11
    default: "1.53"

  gapext:
    type: string?
    label: Gap Extension
    doc: "Penalty for each additional base/residue in a gap."
    inputBinding:
      prefix: --gapext
      position: 12

  order:
    type: string?
    label: Output Order
    doc: "The order in which the sequences appear in the final alignment"
    inputBinding:
      prefix: --order
      position: 13
    default: "aligned"

  nbtree:
    type: string?
    label: Tree Rebuilding Number
    doc: "Tree Rebuilding Number"
    inputBinding:
      prefix: --nbtree
      position: 14
    default: "2"

  treeout:
    type: string?
    label: Guide tree output file
    doc: "Generate guide tree file"
    inputBinding:
      prefix: --treeout
      position: 15
    default: "true"

  maxiterate:
    type: string?
    label: Max Iterate
    doc: "Maximum number of iterations to perform when refining the alignment"
    inputBinding:
      prefix: --maxiterate
      position: 16
    default: "2"

  ffts:
    type: string?
    label: Perform FFTS
    doc: "Perform fast fourier transform"
    inputBinding:
      prefix: --ffts
      position: 17
    default: "none"

  stype:
    type: string?
    label: Sequence Type
    doc: "Indicates if the sequences to align are protein or nucleotide (DNA/RNA)."
    inputBinding:
      prefix: --stype
      position: 18


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
