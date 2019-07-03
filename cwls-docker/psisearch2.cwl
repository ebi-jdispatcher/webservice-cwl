#!/usr/bin/env cwl-runner

# Copyright (C) 2019 EMBL - European Bioinformatics Institute
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
label: "PSI-Search 2"
id: "psisearch2"
baseCommand: psisearch2.py

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

  psiprogram:
    type: string?
    label: The source domain database
    doc: "Select the source doamin database to query."
    inputBinding:
      prefix: --psiprogram
      position: 9
    default: "ssearch"

  psithr:
    type: string?
    label: PSSM E-Value cut-off
    doc: "Expectation value threshold for automatic selection of matched sequences for inclusion in the PSSM at each iteration."
    inputBinding:
      prefix: --psithr
      position: 10
    default: "1.0e-3"

  maxiterations:
    type: string?
    label: Maximum number of iterations
    doc: "Run iteration(s) until reaching convergence or the maximum number of iterations."
    inputBinding:
      prefix: --maxiterations
      position: 11
    default: "1"

  mask:
    type: string?
    label: HOE Region masking
    doc: "Select method to mask sequence regions for HOEs in PSSM constructions. This option allows you to mask sequence characters beyond the alignment region when constructing the PSSM, reducing over-extension errors."
    inputBinding:
      prefix: --mask
      position: 12

  domainannot:
    type: string?
    label: Domain annotation
    doc: "Produce domain annotation for query, subject or both."
    inputBinding:
      prefix: --domainannot
      position: 13
    default: "both"

  domaindb:
    type: string?
    label: The source domain database
    doc: "Select the source domain database to query."
    inputBinding:
      prefix: --domaindb
      position: 14
    default: "pfam"

  domaindiag:
    type: string?
    label: Domain diagram display
    doc: "Display domain diagrams in SVG"
    inputBinding:
      prefix: --domaindiag
      position: 15
    default: "true"

  seqbdr:
    type: string?
    label: Sequence boundaries for PSSM
    doc: "Options to determine sequence boundaries for PSSM generation (alignment, domain or combination)."
    inputBinding:
      prefix: --seqbdr
      position: 16
    default: "alignment"

  qvalue:
    type: string?
    label: Domain Q-value threshold
    doc: "Domain Q-value threshold (larger than) to include domain boundaries for PSSM generation."
    inputBinding:
      prefix: --qvalue
      position: 17
    default: "30"

  matrix:
    type: string?
    label: Matrix
    doc: "The comparison matrix to be used to score alignments when searching the database"
    inputBinding:
      prefix: --matrix
      position: 18
    default: "BLOSUM62"

  gapopen:
    type: string?
    label: Gap open
    doc: "Penalty taken away from the score when a gap is created in sequence. Increasing the gap opening penalty will decrease the number of gaps in the final alignment."
    inputBinding:
      prefix: --gapopen
      position: 19
    default: "11"

  gapext:
    type: string?
    label: Gap extend
    doc: "Penalty taken away from the score for each base or residue in the gap. Increasing the gap extension penalty favours short gaps in the final alignment, conversly, decreasing the gap extension penalty favours long gaps in the final alignment."
    inputBinding:
      prefix: --gapext
      position: 20
    default: "1"

  expthr:
    type: string?
    label: Results E() Limit
    doc: "Limits the number of scores and alignments reported based on the expectation value. This value is the maximum number of times the match is expected to occur by chance."
    inputBinding:
      prefix: --expthr
      position: 21
    default: "10.0"

  scores:
    type: string?
    label: Scores
    doc: "Maximum number of alignment score summaries reported in the result output."
    inputBinding:
      prefix: --scores
      position: 22
    default: "500"

  alignments:
    type: string?
    label: Alignments
    doc: "Maximum number of alignments reported in the result output."
    inputBinding:
      prefix: --alignments
      position: 23
    default: "500"

  hsps:
    type: string?
    label: Display of multiple high-scoring alignments (HSPs)
    doc: "Turn on/off the display of all significant alignments between query and database sequence."
    inputBinding:
      prefix: --hsps
      position: 24
    default: "false"

  scoreformat:
    type: string?
    label: Score formats
    doc: "Different score formats."
    inputBinding:
      prefix: --scoreformat
      position: 25
    default: "default"

  filter:
    type: string?
    label: Filter
    doc: "Filter regions of low sequence complexity. This can avoid issues with low complexity sequences where matches are found due to composition rather then meaningful sequence similarity. However in some cases filtering also masks regions of interest and so should be used with caution."
    inputBinding:
      prefix: --filter
      position: 26
    default: "none"

  hist:
    type: string?
    label: Histogram
    doc: "Turn on/off the histogram in the PSI-Search result. The histogram gives a qualitative view of how well the statistical theory fits the similarity scores calculated by the program."
    inputBinding:
      prefix: --hist
      position: 27
    default: "false"

  database:
    type: string?
    label: Database
    doc: "The databases to run the sequence similarity search against. Multiple databases can be selected at the same time."
    inputBinding:
      prefix: --database
      position: 28

  previousjobid:
    type: string?
    label: Previous Iteration Job Id
    doc: "The job identifier for the previous PSI-Search iteration."
    inputBinding:
      prefix: --previousjobid
      position: 29

  selectedHits:
    type: string?
    label: Selected Hits
    doc: "List of identifiers from the hits of the previous iteration to use to construct the search PSSM for this iteration."
    inputBinding:
      prefix: --selectedHits
      position: 30

  bdrfile:
    type: string?
    label: Boundary File
    doc: "Boundary file containing boundary information for pre-selected sequences.Used for maskging to clean HOEs. "
    inputBinding:
      prefix: --bdrfile
      position: 31

  cpfile:
    type: string?
    label: Checkpoint File
    doc: "Checkpoint file from the previous iteration. Must be in ASN.1 Binary Format."
    inputBinding:
      prefix: --cpfile
      position: 32


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
