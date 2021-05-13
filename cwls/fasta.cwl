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
label: "FASTA"
id: "fasta"
baseCommand: python

inputs:
  # Web Service Clients: Common Entries
  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/fasta.py

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

  program:
    type: string?
    label: Program
    doc: "The FASTA program to be used for the Sequence Similarity Search"
    inputBinding:
      prefix: --program
      position: 9

  stype:
    type: string?
    label: Sequence type
    doc: "Indicates if the query sequence is protein, DNA or RNA. Used to force FASTA to interpret the input sequence as specified type of sequence (via. the '-p', '-n' or '-U' options), this prevents issues when using nucleotide sequences that contain many ambiguous residues."
    inputBinding:
      prefix: --stype
      position: 10

  matrix:
    type: string?
    label: Matrix
    doc: "(Protein searches) The substitution matrix used for scoring alignments when searching the database. 
			Target identity is the average alignment identity the matrix would produce in the absence of homology and can be used to compare different matrix types. 
			Alignment boundaries are more accurate when the alignment identity matches the target identity percentage."
    inputBinding:
      prefix: --matrix
      position: 11

  match_scores:
    type: string?
    label: Match/mismatch scores
    doc: "(Nucleotide searches) The match score is the bonus to the alignment score when matching the same base. The mismatch is the penalty when failing to match."
    inputBinding:
      prefix: --match_scores
      position: 12

  gapopen:
    type: string?
    label: Gap open
    doc: "Score for the first residue in a gap."
    inputBinding:
      prefix: --gapopen
      position: 13

  gapext:
    type: string?
    label: Gap extend
    doc: "Score for each additional residue in a gap."
    inputBinding:
      prefix: --gapext
      position: 14

  hsps:
    type: string?
    label: Display of multiple high-scoring alignments (HSPs)
    doc: "Turn on/off the display of all significant alignments between query and library sequence."
    inputBinding:
      prefix: --hsps
      position: 15
    default: "false"

  expupperlim:
    type: string?
    label: Expectation upper limit
    doc: "Limits the number of scores and alignments reported based on the expectation value. This is the maximum number of times the match is expected to occur by chance."
    inputBinding:
      prefix: --expupperlim
      position: 16

  explowlim:
    type: string?
    label: Expectation lower limit
    doc: "Limit the number of scores and alignments reported based on the expectation value. This is the minimum number of times the match is expected to occur by chance. This allows closely related matches to be excluded from the result in favor of more distant relationships."
    inputBinding:
      prefix: --explowlim
      position: 17
    default: "0"

  strand:
    type: string?
    label: Nucleotide strand
    doc: "For nucleotide sequences specify the sequence strand to be used for the search. By default both upper (provided) and lower (reverse complement of provided) strands are used, for single stranded sequences searching with only the upper or lower strand may provide better results."
    inputBinding:
      prefix: --strand
      position: 18

  hist:
    type: string?
    label: Histogram
    doc: "Turn on/off the histogram in the FASTA result. The histogram gives a qualitative view of how well the statistical theory fits the similarity scores calculated by the program."
    inputBinding:
      prefix: --hist
      position: 19
    default: "false"

  scores:
    type: string?
    label: Scores
    doc: "Maximum number of match score summaries reported in the result output."
    inputBinding:
      prefix: --scores
      position: 20
    default: "50"

  alignments:
    type: string?
    label: Alignments
    doc: "Maximum number of match alignments reported in the result output."
    inputBinding:
      prefix: --alignments
      position: 21
    default: "50"

  scoreformat:
    type: string?
    label: Score report format
    doc: "Different score report formats."
    inputBinding:
      prefix: --scoreformat
      position: 22
    default: "default"

  stats:
    type: string?
    label: Statistical estimates
    doc: "The statistical routines assume that the library contains a large sample of unrelated sequences. Options to select what method to use include regression,  maximum likelihood estimates, shuffles, or combinations of these."
    inputBinding:
      prefix: --stats
      position: 23
    default: "1"

  annotfeats:
    type: string?
    label: Annotation Features 
    doc: "Turn on/off annotation features. 
				Annotation features shows features from UniProtKB, such as variants, active sites, phospho-sites and binding sites that have
				been found in the aligned region of the database hit. To see the annotation features in the results after this has been enabled, 
				select sequences of interest and click to 'Show' Alignments. This option also enables a new result tab (Domain Diagrams) that highlights
				domain regions.
			"
    inputBinding:
      prefix: --annotfeats
      position: 24
    default: "false"

  annotsym:
    type: string?
    label: Annotation Symbols
    doc: "Specify the annotation symbols."
    inputBinding:
      prefix: --annotsym
      position: 25

  dbrange:
    type: string?
    label: Database range
    doc: "Specify the sizes of the sequences in a database to search against. For example: 100-250 will search all sequences in a database with length between 100 and 250 residues, inclusive."
    inputBinding:
      prefix: --dbrange
      position: 26

  seqrange:
    type: string?
    label: Sequence range
    doc: "Specify a range or section of the input sequence to use in the search. Example: Specifying '34-89' in an input sequence of total length 100, will tell FASTA to only use residues 34 to 89, inclusive."
    inputBinding:
      prefix: --seqrange
      position: 27

  filter:
    type: string?
    label: Filter
    doc: "Filter regions of low sequence complexity. This can avoid issues with low complexity sequences where matches are found due to composition rather then meaningful sequence similarity. However in some cases filtering also masks regions of interest and so should be used with caution."
    inputBinding:
      prefix: --filter
      position: 28
    default: "none"

  transltable:
    type: string?
    label: Translation table
    doc: "Query Genetic code to use in translation"
    inputBinding:
      prefix: --transltable
      position: 29
    default: "1"

  database:
    type: string?
    label: Database
    doc: "The databases to run the sequence similarity search against. Multiple databases can be used at the same time"
    inputBinding:
      prefix: --database
      position: 30

  ktup:
    type: string?
    label: KTUP
    doc: "FASTA uses a rapid word-based lookup strategy to speed the initial phase of the similarity search. The KTUP is used to control the sensitivity of the search. Lower values lead to more sensitive, but slower searches."
    inputBinding:
      prefix: --ktup
      position: 31


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
