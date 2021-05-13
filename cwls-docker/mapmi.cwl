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
label: "MapMi"
id: "mapmi"
baseCommand: mapmi.py

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

  scorethr:
    type: string?
    label: Score threshold
    doc: "Score threshold. The minimum score for a candidate hairpin."
    inputBinding:
      prefix: --scorethr
      position: 9
    default: "35"

  longext:
    type: string?
    label: Long match extention
    doc: "Long match extention (bp)."
    inputBinding:
      prefix: --longext
      position: 10

  shortext:
    type: string?
    label: Short match extention
    doc: "Short match extention (bp)."
    inputBinding:
      prefix: --shortext
      position: 11

  maxmis:
    type: string?
    label: Maximum mature mismatches
    doc: "Maximum mature mismatches."
    inputBinding:
      prefix: --maxmis
      position: 12
    default: "1"

  mismatchpen:
    type: string?
    label: Mature mismatch penalty
    doc: "Mature mismatch penalty."
    inputBinding:
      prefix: --mismatchpen
      position: 13
    default: "10"

  bowtie:
    type: string?
    label: Maximum matches per genome
    doc: "Maximum allowed matches per candidate genome (Bowtie-m). 0 for disable."
    inputBinding:
      prefix: --bowtie
      position: 14

  excludecan:
    type: string?
    label: Exclude candidates
    doc: "Exclude candidates in loop. Binary toggle to exclude mature."
    inputBinding:
      prefix: --excludecan
      position: 15
    default: "true"

  maxloop:
    type: string?
    label: Maximum loop overlap
    doc: "Maximum loop overlap. Maximum allowed mature basepairs overlapping loop."
    inputBinding:
      prefix: --maxloop
      position: 16
    default: "4"

  metazoa_species:
    type: string?
    label: Ensembl Metazoa Species
    doc: "Ensembl Metazoa Species"
    inputBinding:
      prefix: --metazoa_species
      position: 17
    default: "Caenorhabditis_elegans,Drosophila_melanogaster"

  ensembl_species:
    type: string?
    label: Ensembl Species
    doc: "Ensembl Species"
    inputBinding:
      prefix: --ensembl_species
      position: 18
    default: "Danio_rerio,Homo_sapiens,Mus_musculus"


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
