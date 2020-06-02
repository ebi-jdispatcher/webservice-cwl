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
label: "Prank"
id: "prank"
baseCommand: python

inputs:
  # Web Service Clients: Common Entries
  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/prank.py

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

  data_file:
    type: string?
    label: File upload
    doc: "A file containing valid sequences in FASTA format can be used as input for the sequence similarity search. Word processors files may yield unpredictable results as hidden/control characters may be present in the files. It is best to save files with the Unix format option to avoid hidden Windows characters."
    inputBinding:
      prefix: --data_file
      position: 9

  tree_file:
    type: string?
    label: Tree File
    doc: "Tree file in Newick Binary Format."
    inputBinding:
      prefix: --tree_file
      position: 10

  do_njtree:
    type: string?
    label: Do NJ tree
    doc: "compute guide tree from input alignment"
    inputBinding:
      prefix: --do_njtree
      position: 11
    default: "false"

  do_clustalw_tree:
    type: string?
    label: Do Clustalw Tree
    doc: "compute guide tree using Clustalw2"
    inputBinding:
      prefix: --do_clustalw_tree
      position: 12
    default: "false"

  model_file:
    type: string?
    label: Model File
    doc: "Structure Model File."
    inputBinding:
      prefix: --model_file
      position: 13

  output_format:
    type: string?
    label: Output Format
    doc: "Format for output alignment file"
    inputBinding:
      prefix: --output_format
      position: 14
    default: "8"

  trust_insertions:
    type: string?
    label: Trust insertions
    doc: "Trust inferred insertions and do not allow their later matching"
    inputBinding:
      prefix: --trust_insertions
      position: 15
    default: "false"

  show_insertions_with_dots:
    type: string?
    label: Show insertions with dots
    doc: "Show gaps created by insertions as dots, deletions as dashes"
    inputBinding:
      prefix: --show_insertions_with_dots
      position: 16
    default: "false"

  use_log_space:
    type: string?
    label: Use log space
    doc: "Use log space for probabilities; slower but necessary for large numbers of sequences"
    inputBinding:
      prefix: --use_log_space
      position: 17
    default: "false"

  use_codon_model:
    type: string?
    label: Use codon model
    doc: "Use codon substutition model for alignment; requires DNA, multiples of three in length"
    inputBinding:
      prefix: --use_codon_model
      position: 18
    default: "false"

  translate_DNA:
    type: string?
    label: Translate DNA
    doc: "Translate DNA sequences to proteins and backtranslate results"
    inputBinding:
      prefix: --translate_DNA
      position: 19
    default: "false"

  mt_translate_DNA:
    type: string?
    label: MT Translate DNA
    doc: "Translate DNA sequences to mt proteins, align and backtranslate results"
    inputBinding:
      prefix: --mt_translate_DNA
      position: 20
    default: "false"

  gap_rate:
    type: string?
    label: Gap Opening Rate
    doc: "Gap Opening Rate"
    inputBinding:
      prefix: --gap_rate
      position: 21

  gap_extension:
    type: string?
    label: Gap Extension Probability
    doc: "Gap Extension Probability"
    inputBinding:
      prefix: --gap_extension
      position: 22

  tn93_kappa:
    type: string?
    label: Kappa
    doc: "Parameter kappa for Tamura-Nei DNA substitution model"
    inputBinding:
      prefix: --tn93_kappa
      position: 23

  tn93_rho:
    type: string?
    label: Rho
    doc: "Parameter rho for Tamura-Nei DNA substitution model"
    inputBinding:
      prefix: --tn93_rho
      position: 24

  guide_pairwise_distance:
    type: string?
    label: Guide Pairwise Distance
    doc: "Fixed pairwise distance used for generating scoring matrix in guide tree computation"
    inputBinding:
      prefix: --guide_pairwise_distance
      position: 25

  max_pairwise_distance:
    type: string?
    label: Max Pairwise Distance
    doc: "Maximum pairwise distance allowed in progressive steps of multiple alignment; allows making matching more stringent or flexible"
    inputBinding:
      prefix: --max_pairwise_distance
      position: 26

  branch_length_scaling:
    type: string?
    label: Branch length scaling
    doc: "Factor for scaling all branch lengths"
    inputBinding:
      prefix: --branch_length_scaling
      position: 27

  branch_length_fixed:
    type: string?
    label: Branch length fixed
    doc: "Fixed value for all branch lengths"
    inputBinding:
      prefix: --branch_length_fixed
      position: 28

  branch_length_maximum:
    type: string?
    label: Branch length maximum
    doc: "Upper limit for branch lengths"
    inputBinding:
      prefix: --branch_length_maximum
      position: 29

  use_real_branch_lengths:
    type: string?
    label: Use real branch length
    doc: "Use real branch lengths; using this can be harmful as scoring matrices became flat for large distances; rather use max_pairwise_distance"
    inputBinding:
      prefix: --use_real_branch_lengths
      position: 30
    default: "false"

  do_no_posterior:
    type: string?
    label: No posterior
    doc: "Do not compute posterior probability; much faster if those not needed"
    inputBinding:
      prefix: --do_no_posterior
      position: 31
    default: "false"

  run_once:
    type: string?
    label: Run once
    doc: "Do not iterate alignment"
    inputBinding:
      prefix: --run_once
      position: 32
    default: "false"

  run_twice:
    type: string?
    label: Run twice
    doc: "Iterate alignment"
    inputBinding:
      prefix: --run_twice
      position: 33
    default: "false"

  penalise_terminal_gaps:
    type: string?
    label: Penalise terminal gaps
    doc: "Penalise terminal gaps as any other gap"
    inputBinding:
      prefix: --penalise_terminal_gaps
      position: 34
    default: "false"

  do_posterior_only:
    type: string?
    label: Do posterior only
    doc: "Compute posterior probabilities for given *aligned* sequences; may be unstable but useful"
    inputBinding:
      prefix: --do_posterior_only
      position: 35
    default: "false"

  use_chaos_anchors:
    type: string?
    label: Use chaos anchors
    doc: "Use chaos anchors to massively speed up alignments; DNA only"
    inputBinding:
      prefix: --use_chaos_anchors
      position: 36
    default: "false"

  minimum_anchor_distance:
    type: string?
    label: Minimum anchor distance
    doc: "Minimum chaos anchor distance"
    inputBinding:
      prefix: --minimum_anchor_distance
      position: 37

  maximum_anchor_distance:
    type: string?
    label: Maximum anchor distance
    doc: "Maximum chaos anchor distance"
    inputBinding:
      prefix: --maximum_anchor_distance
      position: 38

  skip_anchor_distance:
    type: string?
    label: Chaos anchor skip distance
    doc: "Chaos anchor skip distance"
    inputBinding:
      prefix: --skip_anchor_distance
      position: 39

  drop_anchor_distance:
    type: string?
    label: Chaos anchor drop distance
    doc: "Chaos anchor drop distance"
    inputBinding:
      prefix: --drop_anchor_distance
      position: 40

  output_ancestors:
    type: string?
    label: Output ancestors
    doc: "Output ancestral sequences and probability profiles; note additional files"
    inputBinding:
      prefix: --output_ancestors
      position: 41
    default: "false"

  noise_level:
    type: string?
    label: Noise level
    doc: "Noise level; progress and debugging information"
    inputBinding:
      prefix: --noise_level
      position: 42

  stay_quiet:
    type: string?
    label: Stay quiet
    doc: "Stay quiet; disable all progress information"
    inputBinding:
      prefix: --stay_quiet
      position: 43
    default: "false"

  random_seed:
    type: string?
    label: Random seed
    doc: "Set seed for random number generator; not recommended"
    inputBinding:
      prefix: --random_seed
      position: 44


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
