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
      location: ../../webservice-clients/perl/ncbiblast.pl

  email:
    type: string
    inputBinding:
      prefix: --email

  sequence_string:
    type: string?
    inputBinding:
      prefix: --sequence

  sequence_file:
    type: File?
    inputBinding:
      prefix: --sequence

  program:
    type: string?
    inputBinding:
      prefix: --program

  type:
    type: string?
    inputBinding:
      prefix: --stype

  database:
    type: string?
    inputBinding:
      prefix: --database

  matrix:
    type: string?
    inputBinding:
      prefix: --matrix

  alignments:
    type: int?
    inputBinding:
      prefix: --alignments

  scores:
    type: int?
    inputBinding:
      prefix: --scores

  exp:
    type: int?
    inputBinding:
      prefix: --exp

  dropoff:
    type: int?
    inputBinding:
      prefix: --dropoff

  gapopen:
    type: int?
    inputBinding:
      prefix: --gapopen

  gapext:
    type: int?
    inputBinding:
      prefix: --gapext

  filter:
    type: boolean?
    inputBinding:
      prefix: --filter

  seqrange:
    type: string?
    inputBinding:
      prefix: --seqrange

  gapalign:
    type: boolean?
    inputBinding:
      prefix: --gapalign

  compstats:
    type: string?
    inputBinding:
      prefix: --compstats

  align:
    type: int?
    inputBinding:
      prefix: --align

# general options
  multifasta:
    type: string?
    inputBinding:
      prefix: --multifasta

  useSeqId:
    type: string?
    inputBinding:
      prefix: --useSeqId

  maxJobs:
    type: string?
    inputBinding:
      prefix: --maxJobs

  outfile:
    type: string?
    inputBinding:
      prefix: --outfile

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat

outputs:
  blast_ids:
    type: File?
    outputBinding:
      glob: "*.ids.*"

  blast_sequence:
    type: File?
    outputBinding:
      glob: "*.sequence.txt"

  blast_array_accs:
    type:
      type: array
      items: File
    outputBinding:
      glob: "*.accs.*"
