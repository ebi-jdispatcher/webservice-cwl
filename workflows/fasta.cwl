#!/usr/bin/env cwl-runner

# Copyright (C) 2018 - 2024 EMBL - European Bioinformatics Institute
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
baseCommand: perl

inputs:
  command:
    type: File
    inputBinding:
      position: 0

    default:
      class: File
      location: ../../webservice-clients/perl/fasta.pl

# Required Inputs
  email:
    type: string
    inputBinding:
      prefix: --email

  sequence:
    type: File?
    inputBinding:
      prefix: --sequence

  program:
    type: string?
    inputBinding:
      prefix: --program

  stype:
    type: string?
    inputBinding:
      prefix: --stype

  database:
    type: string?
    inputBinding:
      prefix: --database

# Tool specific optional inputs
  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  match-scores:
    type: string?
    inputBinding:
      prefix: --match_scores

  gapopen:
    type: int?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      prefix: --gapext

  hsps:
    type: boolean?
    inputBinding:
      prefix: --hsps

  expupperlim:
    type: double?
    inputBinding:
      prefix: --expupperlim

  explowlim:
    type: double?
    inputBinding:
      prefix: --explowlim

  strand:
    type: string?
    inputBinding:
      prefix: --strand

  hist:
    type: boolean?
    inputBinding:
      prefix: --hist

  scores:
    type: int?
    inputBinding:
      prefix: --scores

  alignments:
    type: int?
    inputBinding:
      prefix: --alignments

  scoreformat:
    type: string?
    inputBinding:
      prefix: --scoreformat

  stats:
    type: string?
    inputBinding:
      prefix: --stats

  annotfeats:
    type: boolean?
    inputBinding:
      prefix: --annotfeats

  dbrange:
    type: string?
    inputBinding:
      prefix: --dbrange

  seqrange:
    type: string?
    inputBinding:
      prefix: --seqrange

  filter:
    type: string?
    inputBinding:
      prefix: --filter

  ktup:
    type: int?
    inputBinding:
      prefix: --ktup

# General Inputs

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

  paramdetails:
    type: string?
    inputBinding:
      prefix: --paramDetail

outputs:
  fasta_ids:
    type: File
    outputBinding:
      glob: "*.ids.*"
