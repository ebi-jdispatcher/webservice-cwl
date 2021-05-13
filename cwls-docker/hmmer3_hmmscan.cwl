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
label: "HMMER 3 hmmscan"
id: "hmmer3_hmmscan"
baseCommand: hmmer3_hmmscan.py

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

  incE:
    type: string?
    label: Significance E-values[Model]
    doc: "Significance E-values[Model]"
    inputBinding:
      prefix: --incE
      position: 9

  incdomE:
    type: string?
    label: Significance E-values[Hit]
    doc: "Significance E-values[Hit]"
    inputBinding:
      prefix: --incdomE
      position: 10

  E:
    type: string?
    label: Report E-values[Model]
    doc: "Report E-values[Model]"
    inputBinding:
      prefix: --E
      position: 11

  domE:
    type: string?
    label: Report E-values[Hit]
    doc: "Report E-values[Hit]"
    inputBinding:
      prefix: --domE
      position: 12

  incT:
    type: string?
    label: Significance bit scores[Sequence]
    doc: "Significance bit scores[Sequence]"
    inputBinding:
      prefix: --incT
      position: 13

  incdomT:
    type: string?
    label: Significance bit scores[Hit]
    doc: "Significance bit scores[Hit]"
    inputBinding:
      prefix: --incdomT
      position: 14

  T:
    type: string?
    label: Report bit scores[Sequence]
    doc: "Report bit scores[Sequence]"
    inputBinding:
      prefix: --T
      position: 15

  domT:
    type: string?
    label: Report bit scores[Hit]
    doc: "Report bit scores[Hit]"
    inputBinding:
      prefix: --domT
      position: 16

  cut_ga:
    type: string?
    label: Gathering
    doc: "Use the gathering threshold."
    inputBinding:
      prefix: --cut_ga
      position: 17
    default: "true"

  nobias:
    type: string?
    label: Filters
    doc: "Filters"
    inputBinding:
      prefix: --nobias
      position: 18
    default: "true"

  hmmdbparam:
    type: string?
    label: hmmdbparam
    doc: "The port number for the HMMER Demons"
    inputBinding:
      prefix: --hmmdbparam
      position: 19
    default: "52371"

  compressedout:
    type: string?
    label: Compressed Output
    doc: "By default it runs hmm2c plus post-processing (default output), whereas with compressedout, it gets compressed output only."
    inputBinding:
      prefix: --compressedout
      position: 20

  alignView:
    type: string?
    label: Output alignment
    doc: "Output alignment in result"
    inputBinding:
      prefix: --alignView
      position: 21
    default: "true"

  database:
    type: string?
    label: Database
    doc: "HMM Database for HMMER hmmscan"
    inputBinding:
      prefix: --database
      position: 22
    default: "pfam"

  nhits:
    type: string?
    label: Number of Hits Displayed
    doc: "Number of hits to be displayed.
			"
    inputBinding:
      prefix: --nhits
      position: 23


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
