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
label: "Mview"
id: "mview"
baseCommand: python

inputs:
  # Web Service Clients: Common Entries
  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/mview.py

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
    doc: "Indicates if the sequences to align are protein or nucleotide (DNA/RNA)."
    inputBinding:
      prefix: --stype
      position: 9

  informat:
    type: string?
    label: Input format
    doc: "Format of the input sequence similarity search result or multiple sequence alignment to be processed."
    inputBinding:
      prefix: --informat
      position: 10
    default: "automatic"

  outputformat:
    type: string?
    label: Output format
    doc: "Output format for the alignment."
    inputBinding:
      prefix: --outputformat
      position: 11
    default: "mview"

  htmlmarkup:
    type: string?
    label: HTML markup
    doc: "Amount of HTML markup to be used in the result."
    inputBinding:
      prefix: --htmlmarkup
      position: 12
    default: "head"

  css:
    type: string?
    label: Use Cascading Style Sheets
    doc: "Use Cascading Style Sheets"
    inputBinding:
      prefix: --css
      position: 13
    default: "true"

  pcid:
    type: string?
    label: Compute percent identities with respect to
    doc: "Compute percent identities with respect to"
    inputBinding:
      prefix: --pcid
      position: 14
    default: "aligned"

  alignment:
    type: string?
    label: Show Alignment
    doc: "Show or hide the aligned sequences."
    inputBinding:
      prefix: --alignment
      position: 15
    default: "true"

  ruler:
    type: string?
    label: Show Ruler
    doc: "Show or hide the ruler showing the sequence coordinates."
    inputBinding:
      prefix: --ruler
      position: 16
    default: "true"

  width:
    type: string?
    label: Width
    doc: "Width of output alignment."
    inputBinding:
      prefix: --width
      position: 17
    default: "80"

  coloring:
    type: string?
    label: Coloring
    doc: "Basic style of coloring"
    inputBinding:
      prefix: --coloring
      position: 18
    default: "identity"

  colormap:
    type: string?
    label: Color Map
    doc: "Color map"
    inputBinding:
      prefix: --colormap
      position: 19
    default: "none"

  groupmap:
    type: string?
    label: Group Map
    doc: "Group map"
    inputBinding:
      prefix: --groupmap
      position: 20
    default: "none"

  consensus:
    type: string?
    label: Show Consensus
    doc: "Show or hide consensus sequence derived from the alignment."
    inputBinding:
      prefix: --consensus
      position: 21
    default: "true"

  concoloring:
    type: string?
    label: Consensus Coloring
    doc: "Basic style of consensus coloring"
    inputBinding:
      prefix: --concoloring
      position: 22
    default: "any"

  concolormap:
    type: string?
    label: Consensus Color Map
    doc: "Consensus color map"
    inputBinding:
      prefix: --concolormap
      position: 23
    default: "none"

  congroupmap:
    type: string?
    label: Consensus Group Map
    doc: "Consensus group map"
    inputBinding:
      prefix: --congroupmap
      position: 24
    default: "none"

  congaps:
    type: string?
    label: Consensus Gaps
    doc: "Count gaps during consensus compuatations"
    inputBinding:
      prefix: --congaps
      position: 25
    default: "true"


outputs:
  all:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

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
