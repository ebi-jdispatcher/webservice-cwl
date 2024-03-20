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
class: Workflow

inputs:
  email: string
  sequence: File
  program: string
  database: string
  type: string
  outformat: string
  numberAccessions: string
  method: string
  stype: string

# two separate output file points
outputs:
  workflow_output:
    type: File
    outputSource: clustalo_step/clustalo_out

  iprscan5_output:
    type: File
    outputSource: iprscan5_step/iprscan5_out

steps:
  transeq_step:
    run: 'emboss_transeq.cwl'
    in:
      email: email
      sequence: sequence
    out: [transeq_out]

  ncbiblast_step:
    run: 'ncbiblast.cwl'
    in:
      sequence_file: transeq_step/transeq_out
      email: email
      program: program
      database: database
      type: type
      outformat: outformat
    out: [blast_ids]

  iprscan5_step:
    run: 'iprscan5.cwl'
    in:
      sequence: transeq_step/transeq_out
      email: email
    out: [iprscan5_out]

  dbfetch_step:
    run: 'dbfetch.cwl'
    in:
      accessions-file: ncbiblast_step/blast_ids
      numberAccessions: numberAccessions
      method: method
    out: [sequences]

  clustalo_step:
    run: 'clustalo.cwl'
    in:
      sequences: dbfetch_step/sequences
      email: email
      stype: stype
    out: [clustalo_out]
